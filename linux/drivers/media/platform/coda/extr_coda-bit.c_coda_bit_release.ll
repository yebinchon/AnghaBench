; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_bit_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_bit_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_bit_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_bit_release(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %3 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %7 = call i32 @coda_free_framebuffers(%struct.coda_ctx* %6)
  %8 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %9 = call i32 @coda_free_context_buffers(%struct.coda_ctx* %8)
  %10 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %11 = call i32 @coda_free_bitstream_buffer(%struct.coda_ctx* %10)
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @coda_free_framebuffers(%struct.coda_ctx*) #1

declare dso_local i32 @coda_free_context_buffers(%struct.coda_ctx*) #1

declare dso_local i32 @coda_free_bitstream_buffer(%struct.coda_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
