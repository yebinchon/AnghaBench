; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_ldg*, i32* }
%struct.niu_ldg = type { i32 }

@niu_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_request_irq(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu_ldg*, align 8
  %8 = alloca %struct.niu_ldg*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = call i32 @niu_set_irq_name(%struct.niu* %9)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %42, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 1
  %20 = load %struct.niu_ldg*, %struct.niu_ldg** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %20, i64 %22
  store %struct.niu_ldg* %23, %struct.niu_ldg** %7, align 8
  %24 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %25 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @niu_interrupt, align 4
  %28 = load i32, i32* @IRQF_SHARED, align 4
  %29 = load %struct.niu*, %struct.niu** %3, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %37 = call i32 @request_irq(i32 %26, i32 %27, i32 %28, i32 %35, %struct.niu_ldg* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %17
  br label %46

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %68

46:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.niu*, %struct.niu** %3, align 8
  %53 = getelementptr inbounds %struct.niu, %struct.niu* %52, i32 0, i32 1
  %54 = load %struct.niu_ldg*, %struct.niu_ldg** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %54, i64 %56
  store %struct.niu_ldg* %57, %struct.niu_ldg** %8, align 8
  %58 = load %struct.niu_ldg*, %struct.niu_ldg** %8, align 8
  %59 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.niu_ldg*, %struct.niu_ldg** %8, align 8
  %62 = call i32 @free_irq(i32 %60, %struct.niu_ldg* %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @niu_set_irq_name(%struct.niu*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.niu_ldg*) #1

declare dso_local i32 @free_irq(i32, %struct.niu_ldg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
