; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_assign_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_assign_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.igb_adapter* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@IGB_N0_QUEUE = common dso_local global i32 0, align 4
@E1000_EICR_RX_QUEUE0 = common dso_local global i32 0, align 4
@E1000_EICR_TX_QUEUE0 = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@E1000_EIMS_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*, i32)* @igb_assign_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_assign_vector(%struct.igb_q_vector* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %11 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %10, i32 0, i32 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  store %struct.igb_adapter* %12, %struct.igb_adapter** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 2
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load i32, i32* @IGB_N0_QUEUE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @IGB_N0_QUEUE, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %18 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %24 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %31 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %37 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %153 [
    i32 134, label %47
    i32 133, label %87
    i32 132, label %120
    i32 129, label %120
    i32 128, label %120
    i32 131, label %120
    i32 130, label %120
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IGB_N0_QUEUE, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @E1000_EICR_RX_QUEUE0, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @IGB_N0_QUEUE, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @E1000_EICR_TX_QUEUE0, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @E1000_EIMS_OTHER, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %72, %65
  %80 = call i32 @E1000_MSIXBM(i32 0)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @array_wr32(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %86 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %155

87:                                               ; preds = %42
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @IGB_N0_QUEUE, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 7
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 8
  %98 = shl i32 %97, 1
  %99 = call i32 @igb_write_ivar(%struct.e1000_hw* %92, i32 %93, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %91, %87
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @IGB_N0_QUEUE, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 7
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 8
  %111 = shl i32 %110, 1
  %112 = add nsw i32 %111, 8
  %113 = call i32 @igb_write_ivar(%struct.e1000_hw* %105, i32 %106, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %104, %100
  %115 = load i32, i32* %4, align 4
  %116 = call i8* @BIT(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %119 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %155

120:                                              ; preds = %42, %42, %42, %42, %42
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @IGB_N0_QUEUE, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %7, align 4
  %128 = ashr i32 %127, 1
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, 1
  %131 = shl i32 %130, 4
  %132 = call i32 @igb_write_ivar(%struct.e1000_hw* %125, i32 %126, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %124, %120
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @IGB_N0_QUEUE, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %8, align 4
  %141 = ashr i32 %140, 1
  %142 = load i32, i32* %8, align 4
  %143 = and i32 %142, 1
  %144 = shl i32 %143, 4
  %145 = add nsw i32 %144, 8
  %146 = call i32 @igb_write_ivar(%struct.e1000_hw* %138, i32 %139, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %137, %133
  %148 = load i32, i32* %4, align 4
  %149 = call i8* @BIT(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %152 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %155

153:                                              ; preds = %42
  %154 = call i32 (...) @BUG()
  br label %155

155:                                              ; preds = %153, %147, %114, %79
  %156 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %157 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %160 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %164 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  ret void
}

declare dso_local i32 @array_wr32(i32, i32, i32) #1

declare dso_local i32 @E1000_MSIXBM(i32) #1

declare dso_local i32 @igb_write_ivar(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
