; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_reg_access = type { %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i8* }

@CMD_ACT_SET = common dso_local global i64 0, align 8
@CMD_BBP_REG_ACCESS = common dso_local global i64 0, align 8
@CMD_RF_REG_ACCESS = common dso_local global i64 0, align 8
@CMD_MAC_REG_ACCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_reg(%struct.lbs_private* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_ds_reg_access, align 8
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 @memset(%struct.cmd_ds_reg_access* %9, i32 0, i32 40)
  %12 = call i8* @cpu_to_le16(i64 40)
  %13 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* @CMD_ACT_SET, align 8
  %16 = call i8* @cpu_to_le16(i64 %15)
  %17 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i8* @cpu_to_le16(i64 %18)
  %20 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @CMD_BBP_REG_ACCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CMD_RF_REG_ACCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 255
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %47

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @CMD_MAC_REG_ACCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %51

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %48, i64 %49, %struct.cmd_ds_reg_access* %9)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.cmd_ds_reg_access*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i64, %struct.cmd_ds_reg_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
