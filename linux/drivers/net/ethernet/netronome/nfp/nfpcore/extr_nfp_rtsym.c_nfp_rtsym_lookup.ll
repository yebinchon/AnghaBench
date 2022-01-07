; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym = type { i32 }
%struct.nfp_rtsym_table = type { i32, %struct.nfp_rtsym* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_rtsym* @nfp_rtsym_lookup(%struct.nfp_rtsym_table* %0, i8* %1) #0 {
  %3 = alloca %struct.nfp_rtsym*, align 8
  %4 = alloca %struct.nfp_rtsym_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_rtsym_table* %0, %struct.nfp_rtsym_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %8 = icmp ne %struct.nfp_rtsym_table* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.nfp_rtsym* null, %struct.nfp_rtsym** %3, align 8
  br label %41

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %37, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %19, i32 0, i32 1
  %21 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %21, i64 %23
  %25 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i8* %18, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_rtsym_table, %struct.nfp_rtsym_table* %30, i32 0, i32 1
  %32 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nfp_rtsym, %struct.nfp_rtsym* %32, i64 %34
  store %struct.nfp_rtsym* %35, %struct.nfp_rtsym** %3, align 8
  br label %41

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %11

40:                                               ; preds = %11
  store %struct.nfp_rtsym* null, %struct.nfp_rtsym** %3, align 8
  br label %41

41:                                               ; preds = %40, %29, %9
  %42 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %3, align 8
  ret %struct.nfp_rtsym* %42
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
