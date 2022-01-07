; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_set_key_material.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_set_key_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_key_material = type { %struct.TYPE_4__, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8* }

@CMD_ACT_SET = common dso_local global i32 0, align 4
@TLV_TYPE_KEY_MATERIAL = common dso_local global i32 0, align 4
@CMD_802_11_KEY_MATERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32, i32, i32*, i32)* @lbs_set_key_material to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_key_material(%struct.lbs_private* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cmd_key_material, align 8
  %12 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i32 @memset(%struct.cmd_key_material* %11, i32 0, i32 64)
  %14 = call i8* @cpu_to_le16(i32 64)
  %15 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @CMD_ACT_SET, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @TLV_TYPE_KEY_MATERIAL, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = call i8* @cpu_to_le16(i32 44)
  %25 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %5
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.cmd_key_material, %struct.cmd_key_material* %11, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %41, %5
  %52 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %53 = load i32, i32* @CMD_802_11_KEY_MATERIAL, align 4
  %54 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %52, i32 %53, %struct.cmd_key_material* %11)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.cmd_key_material*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_key_material*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
