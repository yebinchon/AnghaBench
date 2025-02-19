; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_ldg* }
%struct.niu_ldg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32)* @niu_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_enable_interrupts(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.niu_ldg*, align 8
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %31, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.niu*, %struct.niu** %4, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.niu*, %struct.niu** %4, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 1
  %18 = load %struct.niu_ldg*, %struct.niu_ldg** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %18, i64 %20
  store %struct.niu_ldg* %21, %struct.niu_ldg** %7, align 8
  %22 = load %struct.niu*, %struct.niu** %4, align 8
  %23 = load %struct.niu_ldg*, %struct.niu_ldg** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @niu_enable_ldn_in_ldg(%struct.niu* %22, %struct.niu_ldg* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %9

34:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.niu*, %struct.niu** %4, align 8
  %38 = getelementptr inbounds %struct.niu, %struct.niu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.niu*, %struct.niu** %4, align 8
  %43 = load %struct.niu*, %struct.niu** %4, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 1
  %45 = load %struct.niu_ldg*, %struct.niu_ldg** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %45, i64 %47
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @niu_ldg_rearm(%struct.niu* %42, %struct.niu_ldg* %48, i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %35

54:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @niu_enable_ldn_in_ldg(%struct.niu*, %struct.niu_ldg*, i32) #1

declare dso_local i32 @niu_ldg_rearm(%struct.niu*, %struct.niu_ldg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
