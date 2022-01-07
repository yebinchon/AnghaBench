; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes_dld.c_hermes_find_pdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes_dld.c_hermes_find_pdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdi = type { i32* }

@PDI_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdi* (%struct.pdi*, i64, i8*)* @hermes_find_pdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdi* @hermes_find_pdi(%struct.pdi* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.pdi*, align 8
  %5 = alloca %struct.pdi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pdi*, align 8
  store %struct.pdi* %0, %struct.pdi** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.pdi*, %struct.pdi** %5, align 8
  store %struct.pdi* %9, %struct.pdi** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr i8, i8* %10, i64 -8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %31, %3
  %13 = load %struct.pdi*, %struct.pdi** %8, align 8
  %14 = bitcast %struct.pdi* %13 to i8*
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ule i8* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.pdi*, %struct.pdi** %8, align 8
  %19 = call i64 @pdi_id(%struct.pdi* %18)
  %20 = load i64, i64* @PDI_END, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = load %struct.pdi*, %struct.pdi** %8, align 8
  %26 = call i64 @pdi_id(%struct.pdi* %25)
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.pdi*, %struct.pdi** %8, align 8
  store %struct.pdi* %30, %struct.pdi** %4, align 8
  br label %40

31:                                               ; preds = %24
  %32 = load %struct.pdi*, %struct.pdi** %8, align 8
  %33 = getelementptr inbounds %struct.pdi, %struct.pdi* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.pdi*, %struct.pdi** %8, align 8
  %36 = call i64 @pdi_len(%struct.pdi* %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = bitcast i32* %37 to %struct.pdi*
  store %struct.pdi* %38, %struct.pdi** %8, align 8
  br label %12

39:                                               ; preds = %22
  store %struct.pdi* null, %struct.pdi** %4, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.pdi*, %struct.pdi** %4, align 8
  ret %struct.pdi* %41
}

declare dso_local i64 @pdi_id(%struct.pdi*) #1

declare dso_local i64 @pdi_len(%struct.pdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
