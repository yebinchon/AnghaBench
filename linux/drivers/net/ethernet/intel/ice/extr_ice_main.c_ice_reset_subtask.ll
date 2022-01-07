; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICE_RESET_INVAL = common dso_local global i32 0, align 4
@__ICE_RESET_OICR_RECV = common dso_local global i32 0, align 4
@__ICE_CORER_RECV = common dso_local global i32 0, align 4
@ICE_RESET_CORER = common dso_local global i32 0, align 4
@__ICE_GLOBR_RECV = common dso_local global i32 0, align 4
@ICE_RESET_GLOBR = common dso_local global i32 0, align 4
@__ICE_EMPR_RECV = common dso_local global i32 0, align 4
@ICE_RESET_EMPR = common dso_local global i32 0, align 4
@__ICE_RESET_FAILED = common dso_local global i32 0, align 4
@__ICE_PREPARED_FOR_RESET = common dso_local global i32 0, align 4
@__ICE_PFR_REQ = common dso_local global i32 0, align 4
@__ICE_CORER_REQ = common dso_local global i32 0, align 4
@__ICE_GLOBR_REQ = common dso_local global i32 0, align 4
@ICE_RESET_PFR = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4
@__ICE_CFG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_reset_subtask(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %4 = load i32, i32* @ICE_RESET_INVAL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @__ICE_RESET_OICR_RECV, align 4
  %6 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %7 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @test_bit(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %1
  %12 = load i32, i32* @__ICE_CORER_RECV, align 4
  %13 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @test_and_clear_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @ICE_RESET_CORER, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* @__ICE_GLOBR_RECV, align 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_and_clear_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ICE_RESET_GLOBR, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* @__ICE_EMPR_RECV, align 4
  %31 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %32 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @test_and_clear_bit(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ICE_RESET_EMPR, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @ICE_RESET_INVAL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %141

43:                                               ; preds = %38
  %44 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %45 = call i32 @ice_prepare_for_reset(%struct.ice_pf* %44)
  %46 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %47 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %46, i32 0, i32 1
  %48 = call i64 @ice_check_reset(%struct.TYPE_2__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @__ICE_RESET_FAILED, align 4
  %52 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @set_bit(i32 %51, i32 %54)
  br label %90

56:                                               ; preds = %43
  %57 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %58 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ice_rebuild(%struct.ice_pf* %60, i32 %61)
  %63 = load i32, i32* @__ICE_RESET_OICR_RECV, align 4
  %64 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %65 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clear_bit(i32 %63, i32 %66)
  %68 = load i32, i32* @__ICE_PREPARED_FOR_RESET, align 4
  %69 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %70 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clear_bit(i32 %68, i32 %71)
  %73 = load i32, i32* @__ICE_PFR_REQ, align 4
  %74 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %75 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @clear_bit(i32 %73, i32 %76)
  %78 = load i32, i32* @__ICE_CORER_REQ, align 4
  %79 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %80 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clear_bit(i32 %78, i32 %81)
  %83 = load i32, i32* @__ICE_GLOBR_REQ, align 4
  %84 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %85 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clear_bit(i32 %83, i32 %86)
  %88 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %89 = call i32 @ice_reset_all_vfs(%struct.ice_pf* %88, i32 1)
  br label %90

90:                                               ; preds = %56, %50
  br label %141

91:                                               ; preds = %1
  %92 = load i32, i32* @__ICE_PFR_REQ, align 4
  %93 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %94 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @test_bit(i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @ICE_RESET_PFR, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %91
  %101 = load i32, i32* @__ICE_CORER_REQ, align 4
  %102 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %103 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @test_bit(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @ICE_RESET_CORER, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %100
  %110 = load i32, i32* @__ICE_GLOBR_REQ, align 4
  %111 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %112 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @test_bit(i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @ICE_RESET_GLOBR, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @ICE_RESET_INVAL, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %141

123:                                              ; preds = %118
  %124 = load i32, i32* @__ICE_DOWN, align 4
  %125 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %126 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @test_bit(i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @__ICE_CFG_BUSY, align 4
  %132 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %133 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @test_bit(i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %130
  %138 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @ice_do_reset(%struct.ice_pf* %138, i32 %139)
  br label %141

141:                                              ; preds = %42, %90, %122, %137, %130, %123
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @ice_prepare_for_reset(%struct.ice_pf*) #1

declare dso_local i64 @ice_check_reset(%struct.TYPE_2__*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ice_rebuild(%struct.ice_pf*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ice_reset_all_vfs(%struct.ice_pf*, i32) #1

declare dso_local i32 @ice_do_reset(%struct.ice_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
