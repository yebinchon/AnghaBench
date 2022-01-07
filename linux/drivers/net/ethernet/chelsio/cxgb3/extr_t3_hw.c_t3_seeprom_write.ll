; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_seeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_seeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EEPROM_MAX_POLL = common dso_local global i32 0, align 4
@EEPROMSIZE = common dso_local global i32 0, align 4
@EEPROM_STAT_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_VPD_DATA = common dso_local global i64 0, align 8
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"write to EEPROM address 0x%x failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_seeprom_write(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EEPROM_MAX_POLL, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EEPROMSIZE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @EEPROM_STAT_ADDR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %86

31:                                               ; preds = %24
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* @PCI_VPD_DATA, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = call i32 @pci_write_config_dword(i32 %34, i64 %38, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %5, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @PCI_VPD_ADDR, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @pci_write_config_word(i32 %44, i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %72, %31
  %54 = call i32 @msleep(i32 1)
  %55 = load %struct.adapter*, %struct.adapter** %5, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @PCI_VPD_ADDR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @pci_read_config_word(i32 %57, i64 %61, i32* %8)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ false, %63 ], [ %71, %68 ]
  br i1 %73, label %53, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @CH_ERR(%struct.adapter* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %79, %28
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_write_config_word(i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i64, i32*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
