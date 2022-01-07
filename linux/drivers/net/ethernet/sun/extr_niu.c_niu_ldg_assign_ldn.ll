; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_ldg_assign_ldn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_ldg_assign_ldn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.niu_parent = type { i32* }

@NIU_LDG_MIN = common dso_local global i32 0, align 4
@NIU_LDG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LDN_MAX = common dso_local global i32 0, align 4
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"Port %u, mis-matched LDG assignment for ldn %d, should be %d is %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.niu_parent*, i32, i32)* @niu_ldg_assign_ldn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_ldg_assign_ldn(%struct.niu* %0, %struct.niu_parent* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  %7 = alloca %struct.niu_parent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %6, align 8
  store %struct.niu_parent* %1, %struct.niu_parent** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NIU_LDG_MIN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NIU_LDG_MAX, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %74

20:                                               ; preds = %13
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @LDN_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %74

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.niu_parent*, %struct.niu_parent** %7, align 8
  %33 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.niu*, %struct.niu** %6, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @LDG_NUM(i32 %46)
  %48 = call i32 @nr64(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.niu*, %struct.niu** %6, align 8
  %53 = getelementptr inbounds %struct.niu, %struct.niu* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.niu*, %struct.niu** %6, align 8
  %56 = getelementptr inbounds %struct.niu, %struct.niu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @LDG_NUM(i32 %60)
  %62 = call i32 @nr64(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %45
  br label %73

68:                                               ; preds = %30
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @LDG_NUM(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @nw64(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %67
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %51, %27, %17
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @LDG_NUM(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @nw64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
