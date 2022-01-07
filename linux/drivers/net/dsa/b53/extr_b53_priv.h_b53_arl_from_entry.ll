; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_priv.h_b53_arl_from_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_priv.h_b53_arl_from_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_arl_entry = type { i32, i32, i64, i64, i64, i32 }

@ARLTBL_VID_MASK = common dso_local global i32 0, align 4
@ARLTBL_VID_S = common dso_local global i32 0, align 4
@ARLTBL_DATA_PORT_ID_MASK = common dso_local global i32 0, align 4
@ARLTBL_VALID = common dso_local global i32 0, align 4
@ARLTBL_STATIC = common dso_local global i32 0, align 4
@ARLTBL_AGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.b53_arl_entry*)* @b53_arl_from_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_arl_from_entry(i32* %0, i32* %1, %struct.b53_arl_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.b53_arl_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.b53_arl_entry* %2, %struct.b53_arl_entry** %6, align 8
  %7 = load %struct.b53_arl_entry*, %struct.b53_arl_entry** %6, align 8
  %8 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ether_addr_to_u64(i32 %9)
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.b53_arl_entry*, %struct.b53_arl_entry** %6, align 8
  %13 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ARLTBL_VID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @ARLTBL_VID_S, align 4
  %18 = shl i32 %16, %17
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load %struct.b53_arl_entry*, %struct.b53_arl_entry** %6, align 8
  %23 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ARLTBL_DATA_PORT_ID_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.b53_arl_entry*, %struct.b53_arl_entry** %6, align 8
  %29 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* @ARLTBL_VALID, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.b53_arl_entry*, %struct.b53_arl_entry** %6, align 8
  %39 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @ARLTBL_STATIC, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.b53_arl_entry*, %struct.b53_arl_entry** %6, align 8
  %49 = getelementptr inbounds %struct.b53_arl_entry, %struct.b53_arl_entry* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @ARLTBL_AGE, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @ether_addr_to_u64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
