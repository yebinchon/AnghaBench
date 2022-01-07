; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.c_enic_get_res_counts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.c_enic_get_res_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i8*, i8*, i8*, i8*, i32 }

@RES_TYPE_WQ = common dso_local global i32 0, align 4
@RES_TYPE_RQ = common dso_local global i32 0, align 4
@RES_TYPE_CQ = common dso_local global i32 0, align 4
@RES_TYPE_INTR_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"vNIC resources avail: wq %d rq %d cq %d intr %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enic_get_res_counts(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  store %struct.enic* %0, %struct.enic** %2, align 8
  %3 = load %struct.enic*, %struct.enic** %2, align 8
  %4 = getelementptr inbounds %struct.enic, %struct.enic* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RES_TYPE_WQ, align 4
  %7 = call i8* @vnic_dev_get_res_count(i32 %5, i32 %6)
  %8 = load %struct.enic*, %struct.enic** %2, align 8
  %9 = getelementptr inbounds %struct.enic, %struct.enic* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load %struct.enic*, %struct.enic** %2, align 8
  %11 = getelementptr inbounds %struct.enic, %struct.enic* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RES_TYPE_RQ, align 4
  %14 = call i8* @vnic_dev_get_res_count(i32 %12, i32 %13)
  %15 = load %struct.enic*, %struct.enic** %2, align 8
  %16 = getelementptr inbounds %struct.enic, %struct.enic* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.enic*, %struct.enic** %2, align 8
  %18 = getelementptr inbounds %struct.enic, %struct.enic* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RES_TYPE_CQ, align 4
  %21 = call i8* @vnic_dev_get_res_count(i32 %19, i32 %20)
  %22 = load %struct.enic*, %struct.enic** %2, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.enic*, %struct.enic** %2, align 8
  %25 = getelementptr inbounds %struct.enic, %struct.enic* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RES_TYPE_INTR_CTRL, align 4
  %28 = call i8* @vnic_dev_get_res_count(i32 %26, i32 %27)
  %29 = load %struct.enic*, %struct.enic** %2, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.enic*, %struct.enic** %2, align 8
  %32 = call i32 @enic_get_dev(%struct.enic* %31)
  %33 = load %struct.enic*, %struct.enic** %2, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.enic*, %struct.enic** %2, align 8
  %37 = getelementptr inbounds %struct.enic, %struct.enic* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.enic*, %struct.enic** %2, align 8
  %40 = getelementptr inbounds %struct.enic, %struct.enic* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.enic*, %struct.enic** %2, align 8
  %43 = getelementptr inbounds %struct.enic, %struct.enic* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %38, i8* %41, i8* %44)
  ret void
}

declare dso_local i8* @vnic_dev_get_res_count(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @enic_get_dev(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
