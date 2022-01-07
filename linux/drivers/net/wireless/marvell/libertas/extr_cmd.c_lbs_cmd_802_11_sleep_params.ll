; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_cmd_802_11_sleep_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_cmd_802_11_sleep_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.sleep_params = type { i32, i32, i32, i32, i32, i32 }
%struct.cmd_ds_802_11_sleep_params = type { i8*, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_802_11_SLEEP_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"error 0x%x, offset 0x%x, stabletime 0x%x, calcontrol 0x%x extsleepclk 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_cmd_802_11_sleep_params(%struct.lbs_private* %0, i32 %1, %struct.sleep_params* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sleep_params*, align 8
  %7 = alloca %struct.cmd_ds_802_11_sleep_params, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sleep_params* %2, %struct.sleep_params** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CMD_ACT_GET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @memset(%struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 56)
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %16 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %21 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %26 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %31 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %35 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %39 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %14, %12
  %44 = call i8* @cpu_to_le16(i32 56)
  %45 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 6
  store i8* %48, i8** %49, align 8
  %50 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %51 = load i32, i32* @CMD_802_11_SLEEP_PARAMS, align 4
  %52 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %50, i32 %51, %struct.cmd_ds_802_11_sleep_params* %7)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @le16_to_cpu(i8* %57)
  %59 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @le16_to_cpu(i8* %60)
  %62 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @le16_to_cpu(i8* %63)
  %65 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %61, i8* %64, i32 %66, i32 %68)
  %70 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 5
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @le16_to_cpu(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %75 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @le16_to_cpu(i8* %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %81 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @le16_to_cpu(i8* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %87 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %91 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %95 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, %struct.cmd_ds_802_11_sleep_params* %7, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @le16_to_cpu(i8* %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.sleep_params*, %struct.sleep_params** %6, align 8
  %101 = getelementptr inbounds %struct.sleep_params, %struct.sleep_params* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %55, %43
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_sleep_params*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_sleep_params*) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
