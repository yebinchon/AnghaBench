; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.r8152 = type { i32 }
%struct.tally_counter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PLA_TALLYCNT = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @rtl8152_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8152_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.r8152*, align 8
  %8 = alloca %struct.tally_counter, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.r8152* @netdev_priv(%struct.net_device* %9)
  store %struct.r8152* %10, %struct.r8152** %7, align 8
  %11 = load %struct.r8152*, %struct.r8152** %7, align 8
  %12 = getelementptr inbounds %struct.r8152, %struct.r8152* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @usb_autopm_get_interface(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.r8152*, %struct.r8152** %7, align 8
  %19 = load i32, i32* @PLA_TALLYCNT, align 4
  %20 = load i32, i32* @MCU_TYPE_PLA, align 4
  %21 = call i32 @generic_ocp_read(%struct.r8152* %18, i32 %19, i32 52, %struct.tally_counter* %8, i32 %20)
  %22 = load %struct.r8152*, %struct.r8152** %7, align 8
  %23 = getelementptr inbounds %struct.r8152, %struct.r8152* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_autopm_put_interface(i32 %24)
  %26 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le64_to_cpu(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le64_to_cpu(i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le64_to_cpu(i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le64_to_cpu(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le64_to_cpu(i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 9
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 10
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 11
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.tally_counter, %struct.tally_counter* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 12
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @generic_ocp_read(%struct.r8152*, i32, i32, %struct.tally_counter*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
