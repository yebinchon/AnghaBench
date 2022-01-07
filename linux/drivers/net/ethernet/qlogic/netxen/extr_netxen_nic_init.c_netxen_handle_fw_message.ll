; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_handle_fw_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_handle_fw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_host_sds_ring = type { i32, i32, %struct.status_desc* }
%struct.status_desc = type { i32* }
%struct.TYPE_3__ = type { i32*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.nx_host_sds_ring*)* @netxen_handle_fw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_handle_fw_message(i32 %0, i32 %1, %struct.nx_host_sds_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nx_host_sds_ring*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca %struct.status_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.nx_host_sds_ring* %2, %struct.nx_host_sds_ring** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %19, %3
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %57

19:                                               ; preds = %17
  %20 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %6, align 8
  %21 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %20, i32 0, i32 2
  %22 = load %struct.status_desc*, %struct.status_desc** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %22, i64 %24
  store %struct.status_desc* %25, %struct.status_desc** %8, align 8
  %26 = load %struct.status_desc*, %struct.status_desc** %8, align 8
  %27 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le64_to_cpu(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  store i8* %31, i8** %37, align 8
  %38 = load %struct.status_desc*, %struct.status_desc** %8, align 8
  %39 = getelementptr inbounds %struct.status_desc, %struct.status_desc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le64_to_cpu(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %43, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %6, align 8
  %52 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @get_next_index(i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  br label %11

57:                                               ; preds = %17
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @netxen_get_nic_msg_opcode(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %69 [
    i32 128, label %64
  ]

64:                                               ; preds = %57
  %65 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %6, align 8
  %66 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netxen_handle_linkevent(i32 %67, %struct.TYPE_3__* %7)
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %64
  ret void
}

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @get_next_index(i32, i32) #1

declare dso_local i32 @netxen_get_nic_msg_opcode(i32) #1

declare dso_local i32 @netxen_handle_linkevent(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
