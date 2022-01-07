; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as10x_cmd.c_as10x_cmd_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as10x_cmd.c_as10x_cmd_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as10x_cmd_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@SERVICE_PROG_ID = common dso_local global i32 0, align 4
@SERVICE_PROG_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @as10x_cmd_build(%struct.as10x_cmd_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.as10x_cmd_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.as10x_cmd_t* %0, %struct.as10x_cmd_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i8* @cpu_to_le16(i32 %7)
  %9 = load %struct.as10x_cmd_t*, %struct.as10x_cmd_t** %4, align 8
  %10 = getelementptr inbounds %struct.as10x_cmd_t, %struct.as10x_cmd_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i8* %8, i8** %11, align 8
  %12 = load i32, i32* @SERVICE_PROG_ID, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = load %struct.as10x_cmd_t*, %struct.as10x_cmd_t** %4, align 8
  %15 = getelementptr inbounds %struct.as10x_cmd_t, %struct.as10x_cmd_t* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @SERVICE_PROG_VERSION, align 4
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = load %struct.as10x_cmd_t*, %struct.as10x_cmd_t** %4, align 8
  %20 = getelementptr inbounds %struct.as10x_cmd_t, %struct.as10x_cmd_t* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.as10x_cmd_t*, %struct.as10x_cmd_t** %4, align 8
  %25 = getelementptr inbounds %struct.as10x_cmd_t, %struct.as10x_cmd_t* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
