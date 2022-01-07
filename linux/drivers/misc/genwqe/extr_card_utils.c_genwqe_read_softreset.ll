; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IO_SLU_BITSTREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_read_softreset(%struct.genwqe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  %5 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %6 = call i32 @genwqe_is_privileged(%struct.genwqe_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %13 = load i32, i32* @IO_SLU_BITSTREAM, align 4
  %14 = call i32 @__genwqe_readq(%struct.genwqe_dev* %12, i32 %13)
  %15 = and i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 8, i64 12
  %20 = trunc i64 %19 to i32
  %21 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %22 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @genwqe_is_privileged(%struct.genwqe_dev*) #1

declare dso_local i32 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
