; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32*, i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@I40E_FLAG_LEGACY_RX = common dso_local global i32 0, align 4
@I40E_MAX_RXBUFFER = common dso_local global i8* null, align 8
@I40E_RXBUFFER_2048 = common dso_local global i8* null, align 8
@I40E_2K_TOO_SMALL_WITH_PADDING = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@I40E_RXBUFFER_1536 = common dso_local global i8* null, align 8
@NET_IP_ALIGN = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@I40E_RXBUFFER_3072 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_vsi_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_configure_rx(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %10, i32 0, i32 5
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I40E_FLAG_LEGACY_RX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9, %1
  %19 = load i8*, i8** @I40E_MAX_RXBUFFER, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @I40E_RXBUFFER_2048, align 8
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  br label %68

25:                                               ; preds = %9
  %26 = load i32, i32* @I40E_2K_TOO_SMALL_WITH_PADDING, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ETH_DATA_LEN, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i8*, i8** @I40E_RXBUFFER_1536, align 8
  %38 = load i8*, i8** @NET_IP_ALIGN, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @I40E_RXBUFFER_1536, align 8
  %46 = load i8*, i8** @NET_IP_ALIGN, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %67

53:                                               ; preds = %28, %25
  %54 = load i8*, i8** @I40E_MAX_RXBUFFER, align 8
  %55 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %56 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = icmp slt i32 %57, 8192
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i8*, i8** @I40E_RXBUFFER_3072, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load i8*, i8** @I40E_RXBUFFER_2048, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i8* [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %36
  br label %68

68:                                               ; preds = %67, %18
  store i64 0, i64* %4, align 8
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %69
  %80 = phi i1 [ false, %69 ], [ %78, %75 ]
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @i40e_configure_rx_ring(i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %4, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %4, align 8
  br label %69

92:                                               ; preds = %79
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @i40e_configure_rx_ring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
