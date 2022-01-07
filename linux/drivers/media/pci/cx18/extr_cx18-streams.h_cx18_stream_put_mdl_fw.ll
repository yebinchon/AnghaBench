; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.h_cx18_stream_put_mdl_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.h_cx18_stream_put_mdl_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32 }
%struct.cx18_mdl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*, %struct.cx18_mdl*)* @cx18_stream_put_mdl_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_stream_put_mdl_fw(%struct.cx18_stream* %0, %struct.cx18_mdl* %1) #0 {
  %3 = alloca %struct.cx18_stream*, align 8
  %4 = alloca %struct.cx18_mdl*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %3, align 8
  store %struct.cx18_mdl* %1, %struct.cx18_mdl** %4, align 8
  %5 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %6 = load %struct.cx18_mdl*, %struct.cx18_mdl** %4, align 8
  %7 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %8 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %7, i32 0, i32 0
  %9 = call i32 @cx18_enqueue(%struct.cx18_stream* %5, %struct.cx18_mdl* %6, i32* %8)
  %10 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %11 = call i32 @cx18_stream_load_fw_queue(%struct.cx18_stream* %10)
  ret void
}

declare dso_local i32 @cx18_enqueue(%struct.cx18_stream*, %struct.cx18_mdl*, i32*) #1

declare dso_local i32 @cx18_stream_load_fw_queue(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
