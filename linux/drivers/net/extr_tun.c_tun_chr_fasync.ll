; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tun_file* }
%struct.tun_file = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@PIDTYPE_TGID = common dso_local global i32 0, align 4
@TUN_FASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @tun_chr_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_chr_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tun_file*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.tun_file*, %struct.tun_file** %10, align 8
  store %struct.tun_file* %11, %struct.tun_file** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %16 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %15, i32 0, i32 1
  %17 = call i32 @fasync_helper(i32 %12, %struct.file* %13, i32 %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %42

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load i32, i32* @current, align 4
  %26 = call i32 @task_pid(i32 %25)
  %27 = load i32, i32* @PIDTYPE_TGID, align 4
  %28 = call i32 @__f_setown(%struct.file* %24, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @TUN_FASYNC, align 4
  %30 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %31 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %41

34:                                               ; preds = %20
  %35 = load i32, i32* @TUN_FASYNC, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.tun_file*, %struct.tun_file** %7, align 8
  %38 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %23
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @__f_setown(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @task_pid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
