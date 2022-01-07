; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_put_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_put_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Get vector index fail. vector_id =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32)* @hclge_put_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_put_vector(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %10 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %9)
  store %struct.hclge_vport* %10, %struct.hclge_vport** %6, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 0
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %7, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hclge_get_vector_index(%struct.hclge_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @hclge_free_vector(%struct.hclge_dev* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_get_vector_index(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_free_vector(%struct.hclge_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
