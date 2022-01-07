; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_seeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_seeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EEPROM_MAX_POLL = common dso_local global i32 0, align 4
@EEPROMSIZE = common dso_local global i32 0, align 4
@EEPROM_STAT_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_VPD_ADDR = common dso_local global i64 0, align 8
@PCI_VPD_ADDR_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"reading EEPROM address 0x%x failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCI_VPD_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_seeprom_read(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @EEPROM_MAX_POLL, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @EEPROMSIZE, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EEPROM_STAT_ADDR, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %86

32:                                               ; preds = %25
  %33 = load %struct.adapter*, %struct.adapter** %5, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @PCI_VPD_ADDR, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pci_write_config_word(i32 %35, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %61, %32
  %43 = call i32 @udelay(i32 10)
  %44 = load %struct.adapter*, %struct.adapter** %5, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @PCI_VPD_ADDR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @pci_read_config_word(i32 %46, i64 %50, i32* %8)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i1 [ false, %52 ], [ %60, %57 ]
  br i1 %62, label %42, label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @PCI_VPD_ADDR_F, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.adapter*, %struct.adapter** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @CH_ERR(%struct.adapter* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %86

74:                                               ; preds = %63
  %75 = load %struct.adapter*, %struct.adapter** %5, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @PCI_VPD_DATA, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @pci_read_config_dword(i32 %77, i64 %81, i32* %10)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %74, %68, %29
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @pci_write_config_word(i32, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i64, i32*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
