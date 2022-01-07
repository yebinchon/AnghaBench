; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_find_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_find_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_enc = type { i64, i64 }
%struct.hva_ctx = type { i32 }
%struct.hva_dev = type { i32, %struct.hva_enc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hva_enc* (%struct.hva_ctx*, i64, i64)* @hva_find_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hva_enc* @hva_find_encoder(%struct.hva_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hva_enc*, align 8
  %5 = alloca %struct.hva_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hva_dev*, align 8
  %9 = alloca %struct.hva_enc*, align 8
  %10 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.hva_ctx*, %struct.hva_ctx** %5, align 8
  %12 = call %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx* %11)
  store %struct.hva_dev* %12, %struct.hva_dev** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.hva_dev*, %struct.hva_dev** %8, align 8
  %16 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.hva_dev*, %struct.hva_dev** %8, align 8
  %21 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %20, i32 0, i32 1
  %22 = load %struct.hva_enc**, %struct.hva_enc*** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hva_enc*, %struct.hva_enc** %22, i64 %24
  %26 = load %struct.hva_enc*, %struct.hva_enc** %25, align 8
  store %struct.hva_enc* %26, %struct.hva_enc** %9, align 8
  %27 = load %struct.hva_enc*, %struct.hva_enc** %9, align 8
  %28 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.hva_enc*, %struct.hva_enc** %9, align 8
  %34 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.hva_enc*, %struct.hva_enc** %9, align 8
  store %struct.hva_enc* %39, %struct.hva_enc** %4, align 8
  br label %45

40:                                               ; preds = %32, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %13

44:                                               ; preds = %13
  store %struct.hva_enc* null, %struct.hva_enc** %4, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.hva_enc*, %struct.hva_enc** %4, align 8
  ret %struct.hva_enc* %46
}

declare dso_local %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
