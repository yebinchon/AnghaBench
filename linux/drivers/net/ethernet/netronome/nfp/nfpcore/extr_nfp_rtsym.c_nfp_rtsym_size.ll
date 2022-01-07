; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"rtsym '%s': type NONE\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"rtsym '%s': unknown type: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_rtsym_size(%struct.nfp_rtsym* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_rtsym*, align 8
  store %struct.nfp_rtsym* %0, %struct.nfp_rtsym** %3, align 8
  %4 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  %5 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %12 [
    i32 129, label %7
    i32 128, label %20
    i32 130, label %20
    i32 131, label %24
  ]

7:                                                ; preds = %1
  %8 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %1, %1, %12
  %21 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
