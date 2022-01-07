; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_pci_irq.c_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_irq = type { i32, i32 }

@MLX5_MAX_IRQ_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s@pci:%s\00", align 1
@mlx5_irq_int_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to request irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_irqs(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_irq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_irq*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MLX5_MAX_IRQ_NAME, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev* %24, i32 %25)
  store %struct.mlx5_irq* %26, %struct.mlx5_irq** %10, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @pci_irq_vector(i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @irq_set_name(i8* %18, i32 %32)
  %34 = load %struct.mlx5_irq*, %struct.mlx5_irq** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %34, i32 0, i32 0
  %36 = call i32 @ATOMIC_INIT_NOTIFIER_HEAD(i32* %35)
  %37 = load %struct.mlx5_irq*, %struct.mlx5_irq** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MLX5_MAX_IRQ_NAME, align 4
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @pci_name(i32 %43)
  %45 = call i32 @snprintf(i32 %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @mlx5_irq_int_handler, align 4
  %48 = load %struct.mlx5_irq*, %struct.mlx5_irq** %10, align 8
  %49 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5_irq*, %struct.mlx5_irq** %10, align 8
  %52 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %51, i32 0, i32 0
  %53 = call i32 @request_irq(i32 %46, i32 %47, i32 0, i32 %50, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %23
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %64

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %19

63:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %86

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev* %69, i32 %70)
  store %struct.mlx5_irq* %71, %struct.mlx5_irq** %13, align 8
  %72 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pci_irq_vector(i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.mlx5_irq*, %struct.mlx5_irq** %13, align 8
  %79 = getelementptr inbounds %struct.mlx5_irq, %struct.mlx5_irq* %78, i32 0, i32 0
  %80 = call i32 @free_irq(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %9, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %84, %63
  %87 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlx5_irq* @mlx5_irq_get(%struct.mlx5_core_dev*, i32) #2

declare dso_local i32 @pci_irq_vector(i32, i32) #2

declare dso_local i32 @irq_set_name(i8*, i32) #2

declare dso_local i32 @ATOMIC_INIT_NOTIFIER_HEAD(i32*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #2

declare dso_local i8* @pci_name(i32) #2

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #2

declare dso_local i32 @free_irq(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
