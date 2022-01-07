; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes_dld.c_hermes_apply_pda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes_dld.c_hermes_apply_pda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32 }
%struct.pdi = type { i32* }
%struct.pdr = type { i32 }

@PDI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hermes_apply_pda(%struct.hermes* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hermes*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pdi*, align 8
  %14 = alloca %struct.pdr*, align 8
  store %struct.hermes* %0, %struct.hermes** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.pdr*
  store %struct.pdr* %16, %struct.pdr** %14, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = getelementptr i8, i8* %17, i64 -8
  store i8* %18, i8** %11, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = bitcast i32* %20 to %struct.pdi*
  store %struct.pdi* %21, %struct.pdi** %13, align 8
  br label %22

22:                                               ; preds = %44, %5
  %23 = load %struct.pdi*, %struct.pdi** %13, align 8
  %24 = bitcast %struct.pdi* %23 to i8*
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ule i8* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.pdi*, %struct.pdi** %13, align 8
  %29 = call i64 @pdi_id(%struct.pdi* %28)
  %30 = load i64, i64* @PDI_END, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ false, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %52

34:                                               ; preds = %32
  %35 = load %struct.hermes*, %struct.hermes** %7, align 8
  %36 = load %struct.pdr*, %struct.pdr** %14, align 8
  %37 = load %struct.pdi*, %struct.pdi** %13, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @hermes_plug_pdi(%struct.hermes* %35, %struct.pdr* %36, %struct.pdi* %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %53

44:                                               ; preds = %34
  %45 = load %struct.pdi*, %struct.pdi** %13, align 8
  %46 = getelementptr inbounds %struct.pdi, %struct.pdi* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.pdi*, %struct.pdi** %13, align 8
  %49 = call i64 @pdi_len(%struct.pdi* %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to %struct.pdi*
  store %struct.pdi* %51, %struct.pdi** %13, align 8
  br label %22

52:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @pdi_id(%struct.pdi*) #1

declare dso_local i32 @hermes_plug_pdi(%struct.hermes*, %struct.pdr*, %struct.pdi*, i8*) #1

declare dso_local i64 @pdi_len(%struct.pdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
