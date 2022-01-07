; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_reset_nic_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_reset_nic_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_nic_res_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_nic_res_desc*)* @be_reset_nic_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_reset_nic_desc(%struct.be_nic_res_desc* %0) #0 {
  %2 = alloca %struct.be_nic_res_desc*, align 8
  store %struct.be_nic_res_desc* %0, %struct.be_nic_res_desc** %2, align 8
  %3 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %4 = call i32 @memset(%struct.be_nic_res_desc* %3, i32 0, i32 80)
  %5 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %6 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %5, i32 0, i32 0
  store i32 65535, i32* %6, align 4
  %7 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %8 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %7, i32 0, i32 1
  store i32 65535, i32* %8, align 4
  %9 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %10 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %9, i32 0, i32 2
  store i32 65535, i32* %10, align 4
  %11 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %12 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %11, i32 0, i32 3
  store i32 65535, i32* %12, align 4
  %13 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %14 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %13, i32 0, i32 4
  store i32 65535, i32* %14, align 4
  %15 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %16 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %15, i32 0, i32 5
  store i32 65535, i32* %16, align 4
  %17 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %18 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %17, i32 0, i32 6
  store i32 65535, i32* %18, align 4
  %19 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %20 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %19, i32 0, i32 7
  store i32 65535, i32* %20, align 4
  %21 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %22 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %21, i32 0, i32 8
  store i32 65535, i32* %22, align 4
  %23 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %24 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %23, i32 0, i32 9
  store i32 65535, i32* %24, align 4
  %25 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %26 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %25, i32 0, i32 10
  store i32 65535, i32* %26, align 4
  %27 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %28 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %27, i32 0, i32 11
  store i32 65535, i32* %28, align 4
  %29 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %30 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %29, i32 0, i32 12
  store i32 255, i32* %30, align 4
  %31 = call i32 @cpu_to_le16(i32 61440)
  %32 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %33 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 4
  %34 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %35 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %34, i32 0, i32 13
  store i32 255, i32* %35, align 4
  %36 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %37 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %36, i32 0, i32 14
  store i32 15, i32* %37, align 4
  %38 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %39 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %38, i32 0, i32 15
  store i32 65535, i32* %39, align 4
  %40 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %41 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %40, i32 0, i32 16
  store i32 65535, i32* %41, align 4
  %42 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %43 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %42, i32 0, i32 17
  store i32 -1, i32* %43, align 4
  %44 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %2, align 8
  %45 = getelementptr inbounds %struct.be_nic_res_desc, %struct.be_nic_res_desc* %44, i32 0, i32 18
  store i32 -1, i32* %45, align 4
  ret void
}

declare dso_local i32 @memset(%struct.be_nic_res_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
