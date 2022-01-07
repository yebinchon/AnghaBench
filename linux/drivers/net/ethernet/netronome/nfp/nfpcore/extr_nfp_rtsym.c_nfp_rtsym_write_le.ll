; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_write_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_write_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym_table = type { i32 }
%struct.nfp_rtsym = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"rtsym '%s': unsupported or non-scalar size: %lld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_rtsym_write_le(%struct.nfp_rtsym_table* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_rtsym_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_rtsym*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_rtsym_table* %0, %struct.nfp_rtsym_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table* %10, i8* %11)
  store %struct.nfp_rtsym* %12, %struct.nfp_rtsym** %8, align 8
  %13 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %14 = icmp ne %struct.nfp_rtsym* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %20 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %19)
  switch i32 %20, label %35 [
    i32 4, label %21
    i32 8, label %28
  ]

21:                                               ; preds = %18
  %22 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @nfp_rtsym_writel(i32 %24, %struct.nfp_rtsym* %25, i32 0, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %45

28:                                               ; preds = %18
  %29 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @nfp_rtsym_writeq(i32 %31, %struct.nfp_rtsym* %32, i32 0, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %45

35:                                               ; preds = %18
  %36 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %37 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %41 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %40)
  %42 = call i32 @nfp_err(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %35, %28, %21
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table*, i8*) #1

declare dso_local i32 @nfp_rtsym_size(%struct.nfp_rtsym*) #1

declare dso_local i32 @nfp_rtsym_writel(i32, %struct.nfp_rtsym*, i32, i32) #1

declare dso_local i32 @nfp_rtsym_writeq(i32, %struct.nfp_rtsym*, i32, i32) #1

declare dso_local i32 @nfp_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
