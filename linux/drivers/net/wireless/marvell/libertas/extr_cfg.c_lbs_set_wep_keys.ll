; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_set_wep_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_set_wep_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32*, i32, i32* }
%struct.cmd_ds_802_11_set_wep = type { i32*, i32*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_ACT_ADD = common dso_local global i32 0, align 4
@CMD_TYPE_WEP_40_BIT = common dso_local global i32 0, align 4
@CMD_TYPE_WEP_104_BIT = common dso_local global i32 0, align 4
@CMD_802_11_SET_WEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @lbs_set_wep_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_wep_keys(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_802_11_set_wep, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %1
  %13 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %12
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %26, %19, %12, %1
  %34 = call i32 @memset(%struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 40)
  %35 = call i8* @cpu_to_le16(i32 40)
  %36 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @CMD_ACT_ADD, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %99, %33
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %102

49:                                               ; preds = %46
  %50 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %51 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %71 [
    i32 128, label %57
    i32 129, label %64
  ]

57:                                               ; preds = %49
  %58 = load i32, i32* @CMD_TYPE_WEP_40_BIT, align 4
  %59 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %58, i32* %63, align 4
  br label %77

64:                                               ; preds = %49
  %65 = load i32, i32* @CMD_TYPE_WEP_104_BIT, align 4
  %66 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %65, i32* %70, align 4
  br label %77

71:                                               ; preds = %49
  %72 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %64, %57
  %78 = getelementptr inbounds %struct.cmd_ds_802_11_set_wep, %struct.cmd_ds_802_11_set_wep* %3, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32 %83, i32 %90, i32 %97)
  br label %99

99:                                               ; preds = %77
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %46

102:                                              ; preds = %46
  %103 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %104 = load i32, i32* @CMD_802_11_SET_WEP, align 4
  %105 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %103, i32 %104, %struct.cmd_ds_802_11_set_wep* %3)
  store i32 %105, i32* %5, align 4
  br label %109

106:                                              ; preds = %26
  %107 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %108 = call i32 @lbs_remove_wep_keys(%struct.lbs_private* %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_set_wep*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_set_wep*) #1

declare dso_local i32 @lbs_remove_wep_keys(%struct.lbs_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
