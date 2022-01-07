; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_mk_filtdelwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_mk_filtdelwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_filter_wr = type { i32, i8*, i8*, i8*, i8* }

@FW_FILTER_WR = common dso_local global i32 0, align 4
@FW_FILTER_WR_DEL_FILTER_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_mk_filtdelwr(i32 %0, %struct.fw_filter_wr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_filter_wr*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fw_filter_wr* %1, %struct.fw_filter_wr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %5, align 8
  %8 = call i32 @memset(%struct.fw_filter_wr* %7, i32 0, i32 40)
  %9 = load i32, i32* @FW_FILTER_WR, align 4
  %10 = call i32 @FW_WR_OP_V(i32 %9)
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %5, align 8
  %13 = getelementptr inbounds %struct.fw_filter_wr, %struct.fw_filter_wr* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = call i32 @FW_WR_LEN16_V(i32 2)
  %15 = call i8* @cpu_to_be32(i32 %14)
  %16 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %5, align 8
  %17 = getelementptr inbounds %struct.fw_filter_wr, %struct.fw_filter_wr* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @FW_FILTER_WR_TID_V(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @FW_FILTER_WR_NOREPLY_V(i32 %22)
  %24 = or i32 %19, %23
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %5, align 8
  %27 = getelementptr inbounds %struct.fw_filter_wr, %struct.fw_filter_wr* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @FW_FILTER_WR_DEL_FILTER_F, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %5, align 8
  %31 = getelementptr inbounds %struct.fw_filter_wr, %struct.fw_filter_wr* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @FW_FILTER_WR_RX_RPL_IQ_V(i32 %35)
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %5, align 8
  %39 = getelementptr inbounds %struct.fw_filter_wr, %struct.fw_filter_wr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @memset(%struct.fw_filter_wr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_TID_V(i32) #1

declare dso_local i32 @FW_FILTER_WR_NOREPLY_V(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @FW_FILTER_WR_RX_RPL_IQ_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
