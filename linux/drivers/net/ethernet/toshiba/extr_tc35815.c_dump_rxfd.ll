; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_dump_rxfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_dump_rxfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RxFD = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FD_BDCnt_MASK = common dso_local global i32 0, align 4
@FD_BDCnt_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RxFD(%p): %08x %08x %08x %08x\0A\00", align 1
@FD_CownsFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"BD: \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" %08x %08x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RxFD*)* @dump_rxfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_rxfd(%struct.RxFD* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.RxFD*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.RxFD* %0, %struct.RxFD** %3, align 8
  %6 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %7 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @le32_to_cpu(i32 %9)
  %11 = load i32, i32* @FD_BDCnt_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @FD_BDCnt_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 8, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %20 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %21 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %26 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %31 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %36 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.RxFD* %19, i32 %24, i32 %29, i32 %34, i32 %39)
  %41 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %42 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load i32, i32* @FD_CownsFD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %82

50:                                               ; preds = %18
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %76, %50
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %58 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.RxFD*, %struct.RxFD** %3, align 8
  %67 = getelementptr inbounds %struct.RxFD, %struct.RxFD* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %74)
  br label %76

76:                                               ; preds = %56
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %52

79:                                               ; preds = %52
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %49
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
