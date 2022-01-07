; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes_dld.c_hermes_find_pdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes_dld.c_hermes_find_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdr = type { i64 }

@PDI_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdr* (%struct.pdr*, i64, i8*)* @hermes_find_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdr* @hermes_find_pdr(%struct.pdr* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.pdr*, align 8
  %5 = alloca %struct.pdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pdr*, align 8
  store %struct.pdr* %0, %struct.pdr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.pdr*, %struct.pdr** %5, align 8
  store %struct.pdr* %9, %struct.pdr** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr i8, i8* %10, i64 -8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load %struct.pdr*, %struct.pdr** %8, align 8
  %14 = bitcast %struct.pdr* %13 to i8*
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ule i8* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.pdr*, %struct.pdr** %8, align 8
  %19 = call i64 @pdr_id(%struct.pdr* %18)
  %20 = load i64, i64* @PDI_END, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load %struct.pdr*, %struct.pdr** %8, align 8
  %26 = call i32 @pdr_len(%struct.pdr* %25)
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.pdr* null, %struct.pdr** %4, align 8
  br label %42

29:                                               ; preds = %24
  %30 = load %struct.pdr*, %struct.pdr** %8, align 8
  %31 = call i64 @pdr_id(%struct.pdr* %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.pdr*, %struct.pdr** %8, align 8
  store %struct.pdr* %35, %struct.pdr** %4, align 8
  br label %42

36:                                               ; preds = %29
  %37 = load %struct.pdr*, %struct.pdr** %8, align 8
  %38 = getelementptr inbounds %struct.pdr, %struct.pdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.pdr*
  store %struct.pdr* %40, %struct.pdr** %8, align 8
  br label %12

41:                                               ; preds = %22
  store %struct.pdr* null, %struct.pdr** %4, align 8
  br label %42

42:                                               ; preds = %41, %34, %28
  %43 = load %struct.pdr*, %struct.pdr** %4, align 8
  ret %struct.pdr* %43
}

declare dso_local i64 @pdr_id(%struct.pdr*) #1

declare dso_local i32 @pdr_len(%struct.pdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
