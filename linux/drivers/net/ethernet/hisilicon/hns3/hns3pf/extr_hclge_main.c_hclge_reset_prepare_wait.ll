; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_prepare_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_prepare_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"asserting function reset fail %d!\0A\00", align 1
@HCLGE_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@HNAE3_FLR_DOWN = common dso_local global i32 0, align 4
@HCLGE_PF_OTHER_INT_REG = common dso_local global i32 0, align 4
@HCLGE_VECTOR0_IMP_RESET_INT_B = common dso_local global i32 0, align 4
@HCLGE_RESET_SYNC_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"prepare wait ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_reset_prepare_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_reset_prepare_wait(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %75 [
    i32 129, label %9
    i32 130, label %39
    i32 128, label %60
  ]

9:                                                ; preds = %1
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %11 = call i32 @hclge_func_reset_sync_vf(%struct.hclge_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %87

16:                                               ; preds = %9
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %18 = call i32 @hclge_func_reset_cmd(%struct.hclge_dev* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %16
  %30 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 5
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %76

39:                                               ; preds = %1
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = call i32 @hclge_func_reset_sync_vf(%struct.hclge_dev* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %87

46:                                               ; preds = %39
  %47 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %48, i32 0, i32 5
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @HNAE3_FLR_DOWN, align 4
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 4
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %76

60:                                               ; preds = %1
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %62 = call i32 @hclge_handle_imp_error(%struct.hclge_dev* %61)
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 2
  %65 = load i32, i32* @HCLGE_PF_OTHER_INT_REG, align 4
  %66 = call i32 @hclge_read_dev(i32* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 2
  %69 = load i32, i32* @HCLGE_PF_OTHER_INT_REG, align 4
  %70 = load i32, i32* @HCLGE_VECTOR0_IMP_RESET_INT_B, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @hclge_write_dev(i32* %68, i32 %69, i32 %73)
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %75, %60, %46, %29
  %77 = load i32, i32* @HCLGE_RESET_SYNC_TIME, align 4
  %78 = call i32 @msleep(i32 %77)
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %80 = call i32 @hclge_reset_handshake(%struct.hclge_dev* %79, i32 1)
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %76, %44, %21, %14
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @hclge_func_reset_sync_vf(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_func_reset_cmd(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclge_handle_imp_error(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_read_dev(i32*, i32) #1

declare dso_local i32 @hclge_write_dev(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hclge_reset_handshake(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
