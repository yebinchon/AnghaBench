; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_create_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_create_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_listen_in = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_iwarp_listen_out = type { %struct.qed_iwarp_listener* }
%struct.qed_iwarp_listener = type { i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"callback=%p handle=%p ip=%x:%x:%x:%x port=0x%x vlan=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_create_listen(i8* %0, %struct.qed_iwarp_listen_in* %1, %struct.qed_iwarp_listen_out* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_iwarp_listen_in*, align 8
  %7 = alloca %struct.qed_iwarp_listen_out*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_iwarp_listener*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.qed_iwarp_listen_in* %1, %struct.qed_iwarp_listen_in** %6, align 8
  store %struct.qed_iwarp_listen_out* %2, %struct.qed_iwarp_listen_out** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %11, %struct.qed_hwfn** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.qed_iwarp_listener* @kzalloc(i32 40, i32 %12)
  store %struct.qed_iwarp_listener* %13, %struct.qed_iwarp_listener** %9, align 8
  %14 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %15 = icmp ne %struct.qed_iwarp_listener* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %113

19:                                               ; preds = %3
  %20 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %21 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %29 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32* %27, i32 %30, i32 8)
  %32 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %33 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %38 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %41 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %43 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %46 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %48 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %51 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_in** %6, align 8
  %53 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %56 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %58 = load %struct.qed_iwarp_listen_out*, %struct.qed_iwarp_listen_out** %7, align 8
  %59 = getelementptr inbounds %struct.qed_iwarp_listen_out, %struct.qed_iwarp_listen_out* %58, i32 0, i32 0
  store %struct.qed_iwarp_listener* %57, %struct.qed_iwarp_listener** %59, align 8
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %67 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %66, i32 0, i32 4
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %69 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = call i32 @list_add_tail(i32* %67, i32* %72)
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %75 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %81 = load i32, i32* @QED_MSG_RDMA, align 4
  %82 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %83 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %86 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %87 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %92 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %97 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %102 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %107 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.qed_iwarp_listener*, %struct.qed_iwarp_listener** %9, align 8
  %110 = getelementptr inbounds %struct.qed_iwarp_listener, %struct.qed_iwarp_listener* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %80, i32 %81, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %84, %struct.qed_iwarp_listener* %85, i32 %90, i32 %95, i32 %100, i32 %105, i32 %108, i32 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %19, %16
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.qed_iwarp_listener* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, %struct.qed_iwarp_listener*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
