; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.cx8802_dev = type { i32, i32, i32 }
%struct.cx88_buffer = type { %struct.TYPE_2__, %struct.cx88_riscmem }
%struct.TYPE_2__ = type { i32 }
%struct.cx88_riscmem = type { i32, i64, i32 }
%struct.sg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx8802_buf_prepare(%struct.vb2_queue* %0, %struct.cx8802_dev* %1, %struct.cx88_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.cx8802_dev*, align 8
  %7 = alloca %struct.cx88_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca %struct.cx88_riscmem*, align 8
  %11 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store %struct.cx8802_dev* %1, %struct.cx8802_dev** %6, align 8
  store %struct.cx88_buffer* %2, %struct.cx88_buffer** %7, align 8
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %13 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.cx88_buffer*, %struct.cx88_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call %struct.sg_table* @vb2_dma_sg_plane_desc(i32* %21, i32 0)
  store %struct.sg_table* %22, %struct.sg_table** %9, align 8
  %23 = load %struct.cx88_buffer*, %struct.cx88_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %23, i32 0, i32 1
  store %struct.cx88_riscmem* %24, %struct.cx88_riscmem** %10, align 8
  %25 = load %struct.cx88_buffer*, %struct.cx88_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @vb2_plane_size(i32* %27, i32 0)
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %3
  %35 = load %struct.cx88_buffer*, %struct.cx88_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @vb2_set_plane_payload(i32* %37, i32 0, i32 %38)
  %40 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %41 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %10, align 8
  %44 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %45 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %48 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %51 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cx88_risc_databuffer(i32 %42, %struct.cx88_riscmem* %43, i32 %46, i32 %49, i32 %52, i32 0)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %34
  %57 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %10, align 8
  %58 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %63 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %10, align 8
  %66 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %10, align 8
  %69 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %10, align 8
  %72 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_free_consistent(i32 %64, i32 %67, i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %61, %56
  %76 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %10, align 8
  %77 = call i32 @memset(%struct.cx88_riscmem* %76, i32 0, i32 24)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %75, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(i32*, i32) #1

declare dso_local i32 @vb2_plane_size(i32*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i32) #1

declare dso_local i32 @cx88_risc_databuffer(i32, %struct.cx88_riscmem*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @memset(%struct.cx88_riscmem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
