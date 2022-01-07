; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_reg_access = type { %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8* }

@CMD_ACT_GET = common dso_local global i64 0, align 8
@CMD_MAC_REG_ACCESS = common dso_local global i64 0, align 8
@CMD_BBP_REG_ACCESS = common dso_local global i64 0, align 8
@CMD_RF_REG_ACCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_get_reg(%struct.lbs_private* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cmd_ds_reg_access, align 8
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 @memset(%struct.cmd_ds_reg_access* %9, i32 0, i32 32)
  %16 = call i8* @cpu_to_le16(i64 32)
  %17 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* @CMD_ACT_GET, align 8
  %20 = call i8* @cpu_to_le16(i64 %19)
  %21 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @cpu_to_le16(i64 %22)
  %24 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CMD_MAC_REG_ACCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @CMD_BBP_REG_ACCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @CMD_RF_REG_ACCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %71

39:                                               ; preds = %32, %28, %4
  %40 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %40, i64 %41, %struct.cmd_ds_reg_access* %9)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @CMD_BBP_REG_ACCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @CMD_RF_REG_ACCESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %69

58:                                               ; preds = %49
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @CMD_MAC_REG_ACCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cmd_ds_reg_access, %struct.cmd_ds_reg_access* %9, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_reg_access*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i64, %struct.cmd_ds_reg_access*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
