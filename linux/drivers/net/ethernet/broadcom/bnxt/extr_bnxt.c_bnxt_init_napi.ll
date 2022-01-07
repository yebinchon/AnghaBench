; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { i32 }
%struct.napi_struct = type opaque
%struct.napi_struct.2 = type opaque
%struct.napi_struct.0 = type opaque
%struct.napi_struct.1 = type opaque
%struct.napi_struct.3 = type opaque

@BNXT_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_init_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_init_napi(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_napi*, align 8
  %6 = alloca i32 (%struct.napi_struct*, i32)*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNXT_FLAG_USING_MSIX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %1
  store i32 (%struct.napi_struct*, i32)* bitcast (i32 (%struct.napi_struct.0*, i32)* @bnxt_poll to i32 (%struct.napi_struct*, i32)*), i32 (%struct.napi_struct*, i32)** %6, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 (%struct.napi_struct*, i32)* bitcast (i32 (%struct.napi_struct.1*, i32)* @bnxt_poll_p5 to i32 (%struct.napi_struct*, i32)*), i32 (%struct.napi_struct*, i32)** %6, align 8
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 3
  %40 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %40, i64 %42
  %44 = load %struct.bnxt_napi*, %struct.bnxt_napi** %43, align 8
  store %struct.bnxt_napi* %44, %struct.bnxt_napi** %5, align 8
  %45 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %49 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %48, i32 0, i32 0
  %50 = load i32 (%struct.napi_struct*, i32)*, i32 (%struct.napi_struct*, i32)** %6, align 8
  %51 = bitcast i32 (%struct.napi_struct*, i32)* %50 to i32 (%struct.napi_struct.2*, i32)*
  %52 = call i32 @netif_napi_add(i32 %47, i32* %49, i32 (%struct.napi_struct.2*, i32)* %51, i32 64)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %58 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %62 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %61, i32 0, i32 3
  %63 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %63, i64 %65
  %67 = load %struct.bnxt_napi*, %struct.bnxt_napi** %66, align 8
  store %struct.bnxt_napi* %67, %struct.bnxt_napi** %5, align 8
  %68 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %69 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %71, i32 0, i32 0
  %73 = call i32 @netif_napi_add(i32 %70, i32* %72, i32 (%struct.napi_struct.2*, i32)* bitcast (i32 (%struct.napi_struct.3*, i32)* @bnxt_poll_nitroa0 to i32 (%struct.napi_struct.2*, i32)*), i32 64)
  br label %74

74:                                               ; preds = %60, %56
  br label %87

75:                                               ; preds = %1
  %76 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %77 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %76, i32 0, i32 3
  %78 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %77, align 8
  %79 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %78, i64 0
  %80 = load %struct.bnxt_napi*, %struct.bnxt_napi** %79, align 8
  store %struct.bnxt_napi* %80, %struct.bnxt_napi** %5, align 8
  %81 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %82 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %85 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %84, i32 0, i32 0
  %86 = call i32 @netif_napi_add(i32 %83, i32* %85, i32 (%struct.napi_struct.2*, i32)* bitcast (i32 (%struct.napi_struct.0*, i32)* @bnxt_poll to i32 (%struct.napi_struct.2*, i32)*), i32 64)
  br label %87

87:                                               ; preds = %75, %74
  ret void
}

declare dso_local i32 @bnxt_poll(%struct.napi_struct.0*, i32) #1

declare dso_local i32 @bnxt_poll_p5(%struct.napi_struct.1*, i32) #1

declare dso_local i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32 (%struct.napi_struct.2*, i32)*, i32) #1

declare dso_local i32 @bnxt_poll_nitroa0(%struct.napi_struct.3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
