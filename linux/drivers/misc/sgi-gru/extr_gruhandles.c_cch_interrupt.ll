; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_gruhandles.c_cch_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_gruhandles.c_cch_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_context_configuration_handle = type { i32 }

@CCHOP_INTERRUPT = common dso_local global i32 0, align 4
@cchop_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cch_interrupt(%struct.gru_context_configuration_handle* %0) #0 {
  %2 = alloca %struct.gru_context_configuration_handle*, align 8
  store %struct.gru_context_configuration_handle* %0, %struct.gru_context_configuration_handle** %2, align 8
  %3 = load i32, i32* @CCHOP_INTERRUPT, align 4
  %4 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %2, align 8
  %5 = getelementptr inbounds %struct.gru_context_configuration_handle, %struct.gru_context_configuration_handle* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  %6 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %2, align 8
  %7 = call i32 @start_instruction(%struct.gru_context_configuration_handle* %6)
  %8 = load %struct.gru_context_configuration_handle*, %struct.gru_context_configuration_handle** %2, align 8
  %9 = load i32, i32* @cchop_interrupt, align 4
  %10 = call i32 @wait_instruction_complete(%struct.gru_context_configuration_handle* %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @start_instruction(%struct.gru_context_configuration_handle*) #1

declare dso_local i32 @wait_instruction_complete(%struct.gru_context_configuration_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
