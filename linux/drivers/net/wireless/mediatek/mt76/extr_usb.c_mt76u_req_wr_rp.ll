; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_req_wr_rp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_req_wr_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { i32 }
%struct.mt76_reg_pair = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i64, %struct.mt76_reg_pair*, i32)* @mt76u_req_wr_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_req_wr_rp(%struct.mt76_dev* %0, i64 %1, %struct.mt76_reg_pair* %2, i32 %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mt76_reg_pair*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76_usb*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mt76_reg_pair* %2, %struct.mt76_reg_pair** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %10, i32 0, i32 0
  store %struct.mt76_usb* %11, %struct.mt76_usb** %9, align 8
  %12 = load %struct.mt76_usb*, %struct.mt76_usb** %9, align 8
  %13 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %18, %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %22 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %26 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @__mt76u_wr(%struct.mt76_dev* %19, i64 %24, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %7, align 8
  %32 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %31, i32 1
  store %struct.mt76_reg_pair* %32, %struct.mt76_reg_pair** %7, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.mt76_usb*, %struct.mt76_usb** %9, align 8
  %35 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mt76u_wr(%struct.mt76_dev*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
