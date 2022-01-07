; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_memac_set_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_memac_set_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Undefined exception\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memac_set_exception(%struct.fman_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fman_mac* %0, %struct.fman_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.fman_mac*, %struct.fman_mac** %5, align 8
  %10 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @is_init_done(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @get_exception_flag(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.fman_mac*, %struct.fman_mac** %5, align 8
  %28 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.fman_mac*, %struct.fman_mac** %5, align 8
  %35 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %25
  br label %43

39:                                               ; preds = %17
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %38
  %44 = load %struct.fman_mac*, %struct.fman_mac** %5, align 8
  %45 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @set_exception(i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %39, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @is_init_done(i32) #1

declare dso_local i32 @get_exception_flag(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_exception(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
