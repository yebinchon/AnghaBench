; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_refill_rbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_refill_rbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.TYPE_4__*, %struct.queue_set* }
%struct.TYPE_4__ = type { i32 }
%struct.queue_set = type { i32, i32, %struct.rbdr* }
%struct.rbdr = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rbdr_entry_t = type { i32 }

@NIC_QSET_RBDR_0_1_STATUS0 = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_TAIL = common dso_local global i32 0, align 4
@RCV_FRAG_LEN = common dso_local global i32 0, align 4
@NICVF_RCV_BUF_ALIGN_BYTES = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_DOOR = common dso_local global i32 0, align 4
@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, i32)* @nicvf_refill_rbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_refill_rbdr(%struct.nicvf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.queue_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rbdr*, align 8
  %11 = alloca %struct.rbdr_entry_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 2
  %16 = load %struct.queue_set*, %struct.queue_set** %15, align 8
  store %struct.queue_set* %16, %struct.queue_set** %5, align 8
  %17 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %18 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %145, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %146

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %28 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %27, i32 0, i32 2
  %29 = load %struct.rbdr*, %struct.rbdr** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %29, i64 %31
  store %struct.rbdr* %32, %struct.rbdr** %10, align 8
  %33 = load %struct.rbdr*, %struct.rbdr** %10, align 8
  %34 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %119

38:                                               ; preds = %24
  %39 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %40 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 524287
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %47 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %119

52:                                               ; preds = %38
  %53 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %54 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %52
  %60 = call i32 (...) @smp_rmb()
  %61 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %62 = load i32, i32* @NIC_QSET_RBDR_0_1_TAIL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %61, i32 %62, i32 %63)
  %65 = ashr i32 %64, 3
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %86, %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load %struct.rbdr*, %struct.rbdr** %10, align 8
  %73 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %80 = load %struct.rbdr*, %struct.rbdr** %10, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @RCV_FRAG_LEN, align 4
  %83 = call i64 @nicvf_alloc_rcv_buffer(%struct.nicvf* %79, %struct.rbdr* %80, i32 %81, i32 %82, i32* %12)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %101

86:                                               ; preds = %69
  %87 = load %struct.rbdr*, %struct.rbdr** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr* %87, i32 %88)
  store %struct.rbdr_entry_t* %89, %struct.rbdr_entry_t** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @NICVF_RCV_BUF_ALIGN_BYTES, align 4
  %92 = sub nsw i32 %91, 1
  %93 = xor i32 %92, -1
  %94 = and i32 %90, %93
  %95 = load %struct.rbdr_entry_t*, %struct.rbdr_entry_t** %11, align 8
  %96 = getelementptr inbounds %struct.rbdr_entry_t, %struct.rbdr_entry_t* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %66

101:                                              ; preds = %85, %66
  %102 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %103 = call i32 @nicvf_get_page(%struct.nicvf* %102)
  %104 = call i32 (...) @smp_wmb()
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %109 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %113

110:                                              ; preds = %101
  %111 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %112 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %115 = load i32, i32* @NIC_QSET_RBDR_0_1_DOOR, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %51, %37
  %120 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %121 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %119
  %125 = load %struct.rbdr*, %struct.rbdr** %10, align 8
  %126 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %131 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @netif_running(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %139 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @nicvf_enable_intr(%struct.nicvf* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %129, %124, %119
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %20

146:                                              ; preds = %23, %142
  ret void
}

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @nicvf_alloc_rcv_buffer(%struct.nicvf*, %struct.rbdr*, i32, i32, i32*) #1

declare dso_local %struct.rbdr_entry_t* @GET_RBDR_DESC(%struct.rbdr*, i32) #1

declare dso_local i32 @nicvf_get_page(%struct.nicvf*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @nicvf_enable_intr(%struct.nicvf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
