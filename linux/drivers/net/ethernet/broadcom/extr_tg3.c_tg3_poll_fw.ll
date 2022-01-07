; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_poll_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_poll_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@NO_FWARE_REPORTED = common dso_local global i32 0, align 4
@IS_SSB_CORE = common dso_local global i32 0, align 4
@ASIC_REV_5906 = common dso_local global i64 0, align 8
@VCPU_STATUS = common dso_local global i32 0, align 4
@VCPU_STATUS_INIT_DONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX_MAGIC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No firmware running\0A\00", align 1
@CHIPREV_ID_57765_A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_poll_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_poll_fw(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %8 = call i64 @tg3_flag(%struct.tg3* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @IS_SSB_CORE, align 4
  %14 = call i64 @tg3_flag(%struct.tg3* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %112

17:                                               ; preds = %11
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = call i64 @tg3_asic_rev(%struct.tg3* %18)
  %20 = load i64, i64* @ASIC_REV_5906, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 200
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32, i32* @VCPU_STATUS, align 4
  %28 = call i32 @tr32(i32 %27)
  %29 = load i32, i32* @VCPU_STATUS_INIT_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %112

33:                                               ; preds = %26
  %34 = load %struct.tg3*, %struct.tg3** %3, align 8
  %35 = getelementptr inbounds %struct.tg3, %struct.tg3* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pci_channel_offline(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %112

42:                                               ; preds = %33
  %43 = call i32 @udelay(i32 100)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %112

50:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %85, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 100000
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load %struct.tg3*, %struct.tg3** %3, align 8
  %56 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX, align 4
  %57 = call i32 @tg3_read_mem(%struct.tg3* %55, i32 %56, i32* %5)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX_MAGIC1, align 4
  %60 = xor i32 %59, -1
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %88

63:                                               ; preds = %54
  %64 = load %struct.tg3*, %struct.tg3** %3, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @pci_channel_offline(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.tg3*, %struct.tg3** %3, align 8
  %71 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %72 = call i64 @tg3_flag(%struct.tg3* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load %struct.tg3*, %struct.tg3** %3, align 8
  %76 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %77 = call i32 @tg3_flag_set(%struct.tg3* %75, i32 %76)
  %78 = load %struct.tg3*, %struct.tg3** %3, align 8
  %79 = getelementptr inbounds %struct.tg3, %struct.tg3* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @netdev_info(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %74, %69
  br label %88

83:                                               ; preds = %63
  %84 = call i32 @udelay(i32 10)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %51

88:                                               ; preds = %82, %62, %51
  %89 = load i32, i32* %4, align 4
  %90 = icmp sge i32 %89, 100000
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.tg3*, %struct.tg3** %3, align 8
  %93 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %94 = call i64 @tg3_flag(%struct.tg3* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load %struct.tg3*, %struct.tg3** %3, align 8
  %98 = load i32, i32* @NO_FWARE_REPORTED, align 4
  %99 = call i32 @tg3_flag_set(%struct.tg3* %97, i32 %98)
  %100 = load %struct.tg3*, %struct.tg3** %3, align 8
  %101 = getelementptr inbounds %struct.tg3, %struct.tg3* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netdev_info(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %96, %91, %88
  %105 = load %struct.tg3*, %struct.tg3** %3, align 8
  %106 = call i64 @tg3_chip_rev_id(%struct.tg3* %105)
  %107 = load i64, i64* @CHIPREV_ID_57765_A0, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @mdelay(i32 10)
  br label %111

111:                                              ; preds = %109, %104
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %47, %39, %32, %16, %10
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_read_mem(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
