; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_write_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_write_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64*, i64, %struct.goya_device* }
%struct.goya_device = type { i64 }

@DDR_BAR_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i64, i64)* @goya_write_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_write_pte(%struct.hl_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.goya_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 2
  %10 = load %struct.goya_device*, %struct.goya_device** %9, align 8
  store %struct.goya_device* %10, %struct.goya_device** %7, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %31

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @DDR_BAR_ID, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  %26 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = add nsw i64 %23, %28
  %30 = call i32 @writeq(i64 %17, i64 %29)
  br label %31

31:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @writeq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
