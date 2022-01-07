; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mac_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }

@MVNETA_MAC_ADDR_LOW = common dso_local global i32 0, align 4
@MVNETA_MAC_ADDR_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, i8*, i32)* @mvneta_mac_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_mac_addr_set(%struct.mvneta_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mvneta_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %53

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 5
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %16, %20
  store i32 %21, i32* %8, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 24
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 16
  %32 = or i32 %26, %31
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = or i32 %32, %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 0
  %44 = or i32 %38, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %46 = load i32, i32* @MVNETA_MAC_ADDR_LOW, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mvreg_write(%struct.mvneta_port* %45, i32 %46, i32 %47)
  %49 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %50 = load i32, i32* @MVNETA_MAC_ADDR_HIGH, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mvreg_write(%struct.mvneta_port* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %11, %3
  %54 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mvneta_set_ucast_addr(%struct.mvneta_port* %54, i8 zeroext %57, i32 %58)
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_set_ucast_addr(%struct.mvneta_port*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
