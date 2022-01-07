; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_get_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_get_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"mac_drv_get_space (%d bytes), \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unexpected SMT memory size requested: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mac_drv_get_space end\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"virt addr: %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bus  addr: %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mac_drv_get_space(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %12, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %20 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %27 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i8* null, i8** %3, align 8
  br label %63

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %36
  store i64 %41, i64* %39, align 8
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %47 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %52 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %50 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %49, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** %6, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %34, %31
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
