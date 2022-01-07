; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_add_end_of_cb_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_add_end_of_cb_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.packet_msg_prot = type { i8*, i8*, i8* }

@PACKET_MSG_PROT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_EB_SHIFT = common dso_local global i32 0, align 4
@GOYA_PKT_CTL_MB_SHIFT = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i32 0, align 4
@mmPCIE_DBI_MSIX_DOORBELL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_add_end_of_cb_packets(%struct.hl_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hl_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.packet_msg_prot*, align 8
  %14 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 48
  %20 = inttoptr i64 %19 to %struct.packet_msg_prot*
  store %struct.packet_msg_prot* %20, %struct.packet_msg_prot** %13, align 8
  %21 = load i32, i32* @PACKET_MSG_PROT, align 4
  %22 = load i32, i32* @GOYA_PKT_CTL_OPCODE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @GOYA_PKT_CTL_EB_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @GOYA_PKT_CTL_MB_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %33 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %37 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @cpu_to_le64(i32 %38)
  %40 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %41 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %43 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %42, i32 1
  store %struct.packet_msg_prot* %43, %struct.packet_msg_prot** %13, align 8
  %44 = load i32, i32* @PACKET_MSG_PROT, align 4
  %45 = load i32, i32* @GOYA_PKT_CTL_OPCODE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @GOYA_PKT_CTL_MB_SHIFT, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %53 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 2047
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %58 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @CFG_BASE, align 4
  %60 = load i32, i32* @mmPCIE_DBI_MSIX_DOORBELL_OFF, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = load %struct.packet_msg_prot*, %struct.packet_msg_prot** %13, align 8
  %64 = getelementptr inbounds %struct.packet_msg_prot, %struct.packet_msg_prot* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
