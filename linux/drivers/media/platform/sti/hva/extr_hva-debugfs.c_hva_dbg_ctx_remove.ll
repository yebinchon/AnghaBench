; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_ctx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_dbg_ctx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, %struct.TYPE_4__, %struct.hva_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.hva_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HVA_FLAG_STREAMINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hva_dbg_ctx_remove(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca %struct.hva_dev*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %4 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %4, i32 0, i32 2
  %6 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  store %struct.hva_dev* %6, %struct.hva_dev** %3, align 8
  %7 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @HVA_FLAG_STREAMINFO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.hva_ctx* %17, i32 16)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @debugfs_remove(i32 %23)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.hva_ctx*, i32) #1

declare dso_local i32 @debugfs_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
