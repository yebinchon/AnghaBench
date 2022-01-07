; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, i64, i32, i64, i64*, %struct.TYPE_10__, %struct.TYPE_6__*, i32, %struct.i40e_vsi** }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_vsi = type { i32, i32 }

@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i64 0, align 8
@__I40E_TEMP_LINK_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"couldn't get link state, status: %d\0A\00", align 1
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@I40E_MAX_VEB = common dso_local global i64 0, align 8
@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_link_event(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 8
  %11 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %10, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %11, i64 %14
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %15, align 8
  store %struct.i40e_vsi* %16, %struct.i40e_vsi** %3, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 5
  %31 = call i64 @i40e_get_link_status(%struct.TYPE_10__* %30, i32* %7)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @I40E_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @__I40E_TEMP_LINK_POLLING, align 4
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clear_bit(i32 %36, i32 %39)
  br label %53

41:                                               ; preds = %1
  %42 = load i32, i32* @__I40E_TEMP_LINK_POLLING, align 4
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @set_bit(i32 %42, i32 %45)
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 6
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %140

53:                                               ; preds = %35
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %55 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %53
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @test_bit(i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @netif_carrier_ok(i32 %84)
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %73
  br label %140

88:                                               ; preds = %80, %69, %53
  %89 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @i40e_print_link_message(%struct.i40e_vsi* %89, i32 %90)
  %92 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %93 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @I40E_MAX_VEB, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %88
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 4
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %102 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %97
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %112 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @i40e_veb_link_event(i64 %115, i32 %116)
  br label %122

118:                                              ; preds = %97, %88
  %119 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @i40e_vsi_link_event(%struct.i40e_vsi* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %107
  %123 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %124 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %129 = call i32 @i40e_vc_notify_link_state(%struct.i40e_pf* %128)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %132 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @I40E_FLAG_PTP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %139 = call i32 @i40e_ptp_set_increment(%struct.i40e_pf* %138)
  br label %140

140:                                              ; preds = %41, %87, %137, %130
  ret void
}

declare dso_local i64 @i40e_get_link_status(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @i40e_print_link_message(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_veb_link_event(i64, i32) #1

declare dso_local i32 @i40e_vsi_link_event(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_vc_notify_link_state(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_ptp_set_increment(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
