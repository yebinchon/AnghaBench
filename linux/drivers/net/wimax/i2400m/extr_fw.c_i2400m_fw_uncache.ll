; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_uncache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_fw.c_i2400m_fw_uncache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32* }
%struct.i2400m_fw = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_fw_uncache(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.i2400m_fw*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %4 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %5 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.i2400m_fw*
  store %struct.i2400m_fw* %10, %struct.i2400m_fw** %3, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock(i32* %14)
  %16 = load %struct.i2400m_fw*, %struct.i2400m_fw** %3, align 8
  %17 = icmp ne %struct.i2400m_fw* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.i2400m_fw*, %struct.i2400m_fw** %3, align 8
  %20 = icmp ne %struct.i2400m_fw* %19, inttoptr (i64 -1 to %struct.i2400m_fw*)
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.i2400m_fw*, %struct.i2400m_fw** %3, align 8
  %23 = bitcast %struct.i2400m_fw* %22 to i8*
  %24 = call i32 @i2400m_fw_put(i8* %23)
  br label %25

25:                                               ; preds = %21, %18, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @i2400m_fw_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
