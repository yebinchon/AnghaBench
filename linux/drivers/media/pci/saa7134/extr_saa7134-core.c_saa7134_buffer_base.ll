; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_buffer_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_buffer_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_buf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sg_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @saa7134_buffer_base(%struct.saa7134_buf* %0) #0 {
  %2 = alloca %struct.saa7134_buf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sg_table*, align 8
  store %struct.saa7134_buf* %0, %struct.saa7134_buf** %2, align 8
  %5 = load %struct.saa7134_buf*, %struct.saa7134_buf** %2, align 8
  %6 = getelementptr inbounds %struct.saa7134_buf, %struct.saa7134_buf* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call %struct.sg_table* @vb2_dma_sg_plane_desc(i32* %7, i32 0)
  store %struct.sg_table* %8, %struct.sg_table** %4, align 8
  %9 = load %struct.saa7134_buf*, %struct.saa7134_buf** %2, align 8
  %10 = call i32 @saa7134_buffer_startpage(%struct.saa7134_buf* %9)
  %11 = mul nsw i32 %10, 4096
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %14 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(i32*, i32) #1

declare dso_local i32 @saa7134_buffer_startpage(%struct.saa7134_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
