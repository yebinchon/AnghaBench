; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_enc_dev*)* @solo_enc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_enc_free(%struct.solo_enc_dev* %0) #0 {
  %2 = alloca %struct.solo_enc_dev*, align 8
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %2, align 8
  %3 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %4 = icmp eq %struct.solo_enc_dev* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  %7 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %13 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %19 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %22 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_free_consistent(i32 %11, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @video_unregister_device(i32 %27)
  %29 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %29, i32 0, i32 1
  %31 = call i32 @v4l2_ctrl_handler_free(i32* %30)
  %32 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %33 = call i32 @kfree(%struct.solo_enc_dev* %32)
  br label %34

34:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @kfree(%struct.solo_enc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
