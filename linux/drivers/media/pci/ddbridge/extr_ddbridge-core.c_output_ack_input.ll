; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_output_ack_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_output_ack_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_output = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ddb_input = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_output*, %struct.ddb_input*)* @output_ack_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_ack_input(%struct.ddb_output* %0, %struct.ddb_input* %1) #0 {
  %3 = alloca %struct.ddb_output*, align 8
  %4 = alloca %struct.ddb_input*, align 8
  store %struct.ddb_output* %0, %struct.ddb_output** %3, align 8
  store %struct.ddb_input* %1, %struct.ddb_input** %4, align 8
  %5 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %6 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ddb_output*, %struct.ddb_output** %3, align 8
  %11 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %16 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @DMA_BUFFER_ACK(i32 %17)
  %19 = call i32 @ddbwritel(i32 %9, i32 %14, i32 %18)
  ret void
}

declare dso_local i32 @ddbwritel(i32, i32, i32) #1

declare dso_local i32 @DMA_BUFFER_ACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
