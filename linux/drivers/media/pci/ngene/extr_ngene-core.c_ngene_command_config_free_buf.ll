; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_command_config_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_command_config_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.ngene_command = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_CONFIGURE_FREE_BUFFER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*, i32*)* @ngene_command_config_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_command_config_free_buf(%struct.ngene* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ngene_command, align 8
  store %struct.ngene* %0, %struct.ngene** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @CMD_CONFIGURE_FREE_BUFFER, align 4
  %8 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %6, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %6, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 6, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %6, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @memcpy(i32* %16, i32* %17, i32 6)
  %19 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %6, i32 0, i32 0
  store i32 6, i32* %19, align 8
  %20 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %6, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.ngene*, %struct.ngene** %4, align 8
  %22 = call i64 @ngene_command(%struct.ngene* %21, %struct.ngene_command* %6)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ngene_command(%struct.ngene*, %struct.ngene_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
