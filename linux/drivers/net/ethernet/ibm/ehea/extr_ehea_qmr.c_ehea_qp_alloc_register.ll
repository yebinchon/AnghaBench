; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_qp_alloc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_qp_alloc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { i32 }
%struct.hw_queue = type { i32 }
%struct.ehea_adapter = type { i32 }

@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hw_qpageit_get_inc failed\0A\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"register_rpage_qp failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_qp*, %struct.hw_queue*, i32, i32, i32, %struct.ehea_adapter*, i32)* @ehea_qp_alloc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_qp_alloc_register(%struct.ehea_qp* %0, %struct.hw_queue* %1, i32 %2, i32 %3, i32 %4, %struct.ehea_adapter* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehea_qp*, align 8
  %10 = alloca %struct.hw_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ehea_adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.ehea_qp* %0, %struct.ehea_qp** %9, align 8
  store %struct.hw_queue* %1, %struct.hw_queue** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ehea_adapter* %5, %struct.ehea_adapter** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.hw_queue*, %struct.hw_queue** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @EHEA_PAGESIZE, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @hw_queue_ctor(%struct.hw_queue* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %18, align 4
  store i32 %29, i32* %8, align 4
  br label %71

30:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load %struct.hw_queue*, %struct.hw_queue** %10, align 8
  %37 = call i8* @hw_qpageit_get_inc(%struct.hw_queue* %36)
  store i8* %37, i8** %20, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %66

42:                                               ; preds = %35
  %43 = load i8*, i8** %20, align 8
  %44 = call i64 @__pa(i8* %43)
  store i64 %44, i64* %17, align 8
  %45 = load %struct.ehea_adapter*, %struct.ehea_adapter** %14, align 8
  %46 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.ehea_qp*, %struct.ehea_qp** %9, align 8
  %50 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %17, align 8
  %53 = call i64 @ehea_h_register_rpage(i32 %47, i32 0, i32 %48, i32 %51, i64 %52, i32 1)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* @H_SUCCESS, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %66

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  br label %31

63:                                               ; preds = %31
  %64 = load %struct.hw_queue*, %struct.hw_queue** %10, align 8
  %65 = call i32 @hw_qeit_reset(%struct.hw_queue* %64)
  store i32 0, i32* %8, align 4
  br label %71

66:                                               ; preds = %57, %40
  %67 = load %struct.hw_queue*, %struct.hw_queue** %10, align 8
  %68 = call i32 @hw_queue_dtor(%struct.hw_queue* %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %63, %28
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @hw_queue_ctor(%struct.hw_queue*, i32, i32, i32) #1

declare dso_local i8* @hw_qpageit_get_inc(%struct.hw_queue*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @__pa(i8*) #1

declare dso_local i64 @ehea_h_register_rpage(i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @hw_qeit_reset(%struct.hw_queue*) #1

declare dso_local i32 @hw_queue_dtor(%struct.hw_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
