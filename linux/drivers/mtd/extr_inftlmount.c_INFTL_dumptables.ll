; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_inftlmount.c_INFTL_dumptables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_inftlmount.c_INFTL_dumptables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.INFTLrecord = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [79 x i8] c"-----------------------------------------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"VUtable[%d] ->\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\0A%04x: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%04x \00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"\0A-----------------------------------------------------------------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"PUtable[%d-%d=%d] ->\00", align 1
@.str.6 = private unnamed_addr constant [222 x i8] c"INFTL ->\0A  EraseSize       = %d\0A  h/s/c           = %d/%d/%d\0A  numvunits       = %d\0A  firstEUN        = %d\0A  lastEUN         = %d\0A  numfreeEUNs     = %d\0A  LastFreeEUN     = %d\0A  nb_blocks       = %d\0A  nb_boot_blocks  = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INFTL_dumptables(%struct.INFTLrecord* %0) #0 {
  %2 = alloca %struct.INFTLrecord*, align 8
  %3 = alloca i32, align 4
  store %struct.INFTLrecord* %0, %struct.INFTLrecord** %2, align 8
  %4 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %6 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %12 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = srem i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %24 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %23, i32 0, i32 12
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %9

34:                                               ; preds = %9
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %37 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %40 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %43 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %41, i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %68, %34
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %49 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = srem i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %61 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %60, i32 0, i32 11
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %46

71:                                               ; preds = %46
  %72 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %74 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %77 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %80 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %83 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %86 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %89 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %92 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %95 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %98 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %101 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %104 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
