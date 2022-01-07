; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_clean_xdp_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_clean_xdp_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32 }
%struct.i40e_ring = type { i32, i32, %struct.xdp_umem*, %struct.i40e_tx_buffer* }
%struct.xdp_umem = type { i32 }
%struct.i40e_tx_buffer = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_clean_xdp_tx_irq(%struct.i40e_vsi* %0, %struct.i40e_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdp_umem*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.i40e_tx_buffer*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.i40e_ring* %1, %struct.i40e_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %23 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %22, i32 0, i32 2
  %24 = load %struct.xdp_umem*, %struct.xdp_umem** %23, align 8
  store %struct.xdp_umem* %24, %struct.xdp_umem** %14, align 8
  %25 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %26 = call i32 @i40e_get_head(%struct.i40e_ring* %25)
  store i32 %26, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %29 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %15, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %41 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %143

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %58 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %100, %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %60
  %65 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %66 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %65, i32 0, i32 3
  %67 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %67, i64 %69
  store %struct.i40e_tx_buffer* %70, %struct.i40e_tx_buffer** %18, align 8
  %71 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %18, align 8
  %72 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %77 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %18, align 8
  %78 = call i32 @i40e_clean_xdp_tx_buffer(%struct.i40e_ring* %76, %struct.i40e_tx_buffer* %77)
  br label %82

79:                                               ; preds = %64
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %18, align 8
  %84 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %18, align 8
  %86 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %95 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp uge i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %60

103:                                              ; preds = %60
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %106 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %110 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %113 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp uge i32 %111, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %103
  %120 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %121 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %124 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %119, %103
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.xdp_umem*, %struct.xdp_umem** %14, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @xsk_umem_complete_tx(%struct.xdp_umem* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %127
  %135 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %136 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @i40e_arm_wb(%struct.i40e_ring* %135, %struct.i40e_vsi* %136, i32 %137)
  %139 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @i40e_update_tx_stats(%struct.i40e_ring* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %46
  %144 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %145 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %144, i32 0, i32 2
  %146 = load %struct.xdp_umem*, %struct.xdp_umem** %145, align 8
  %147 = call i64 @xsk_umem_uses_need_wakeup(%struct.xdp_umem* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %151 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %150, i32 0, i32 2
  %152 = load %struct.xdp_umem*, %struct.xdp_umem** %151, align 8
  %153 = call i32 @xsk_set_tx_need_wakeup(%struct.xdp_umem* %152)
  br label %154

154:                                              ; preds = %149, %143
  %155 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @i40e_xmit_zc(%struct.i40e_ring* %155, i32 %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %160, %154
  %164 = phi i1 [ false, %154 ], [ %162, %160 ]
  %165 = zext i1 %164 to i32
  ret i32 %165
}

declare dso_local i32 @i40e_get_head(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_clean_xdp_tx_buffer(%struct.i40e_ring*, %struct.i40e_tx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_umem_complete_tx(%struct.xdp_umem*, i32) #1

declare dso_local i32 @i40e_arm_wb(%struct.i40e_ring*, %struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_update_tx_stats(%struct.i40e_ring*, i32, i32) #1

declare dso_local i64 @xsk_umem_uses_need_wakeup(%struct.xdp_umem*) #1

declare dso_local i32 @xsk_set_tx_need_wakeup(%struct.xdp_umem*) #1

declare dso_local i32 @i40e_xmit_zc(%struct.i40e_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
