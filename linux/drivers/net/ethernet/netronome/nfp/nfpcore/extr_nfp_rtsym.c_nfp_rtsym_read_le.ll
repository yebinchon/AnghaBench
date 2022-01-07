; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_read_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_read_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym_table = type { i32 }
%struct.nfp_rtsym = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"rtsym '%s': unsupported or non-scalar size: %lld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfp_rtsym_read_le(%struct.nfp_rtsym_table* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfp_rtsym_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfp_rtsym*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_rtsym_table* %0, %struct.nfp_rtsym_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table* %12, i8* %13)
  store %struct.nfp_rtsym* %14, %struct.nfp_rtsym** %8, align 8
  %15 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %16 = icmp ne %struct.nfp_rtsym* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %22 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %21)
  switch i32 %22, label %36 [
    i32 4, label %23
    i32 8, label %30
  ]

23:                                               ; preds = %20
  %24 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %28 = call i32 @nfp_rtsym_readl(i32 %26, %struct.nfp_rtsym* %27, i32 0, i64* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %10, align 8
  br label %46

30:                                               ; preds = %20
  %31 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %32 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %35 = call i32 @nfp_rtsym_readq(i32 %33, %struct.nfp_rtsym* %34, i32 0, i64* %10)
  store i32 %35, i32* %11, align 4
  br label %46

36:                                               ; preds = %20
  %37 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %8, align 8
  %42 = call i32 @nfp_rtsym_size(%struct.nfp_rtsym* %41)
  %43 = call i32 @nfp_err(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %36, %30, %23
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 -1, i64* %4, align 8
  br label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table*, i8*) #1

declare dso_local i32 @nfp_rtsym_size(%struct.nfp_rtsym*) #1

declare dso_local i32 @nfp_rtsym_readl(i32, %struct.nfp_rtsym*, i32, i64*) #1

declare dso_local i32 @nfp_rtsym_readq(i32, %struct.nfp_rtsym*, i32, i64*) #1

declare dso_local i32 @nfp_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
