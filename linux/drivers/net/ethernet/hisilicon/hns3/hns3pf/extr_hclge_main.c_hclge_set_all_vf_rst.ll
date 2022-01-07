; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_all_vf_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_all_vf_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, %struct.TYPE_2__*, %struct.hclge_vport* }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_vport = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"set vf(%d) rst failed %d!\0A\00", align 1
@HCLGE_VPORT_STATE_ALIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"inform reset to vf(%d) failed %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_all_vf_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_all_vf_rst(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %71, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 3
  %22 = load %struct.hclge_vport*, %struct.hclge_vport** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %22, i64 %24
  store %struct.hclge_vport* %25, %struct.hclge_vport** %7, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %27 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %28 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hclge_set_vf_rst(%struct.hclge_dev* %26, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %19
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %40 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @HCLGE_VPORT_STATE_ALIVE, align 4
  %50 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %51 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %50, i32 0, i32 1
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %45
  br label %71

55:                                               ; preds = %48
  %56 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %57 = call i32 @hclge_inform_reset_assert_to_vf(%struct.hclge_vport* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %66 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_warn(i32* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %55
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %13

74:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %34
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @hclge_set_vf_rst(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hclge_inform_reset_assert_to_vf(%struct.hclge_vport*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
