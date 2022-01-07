; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_crq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_crq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.crq_server_adapter = type { i32 }
%struct.ibmvmc_crq_msg = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"CRQ recv: capabilities resp (0x%x)\0A\00", align 1
@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ibmvmc_state_capabilities = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"caps msg invalid in state 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CRQ recv: open resp (0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CRQ recv: add buf (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CRQ recv: rem buf (0x%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"CRQ recv: signal msg (0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"CRQ recv: close resp (0x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"CRQ recv: unexpected msg (0x%x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"CRQ recv: unknown msg (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*)* @ibmvmc_crq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_crq_process(%struct.crq_server_adapter* %0, %struct.ibmvmc_crq_msg* %1) #0 {
  %3 = alloca %struct.crq_server_adapter*, align 8
  %4 = alloca %struct.ibmvmc_crq_msg*, align 8
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %3, align 8
  store %struct.ibmvmc_crq_msg* %1, %struct.ibmvmc_crq_msg** %4, align 8
  %5 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %6 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %123 [
    i32 135, label %8
    i32 131, label %30
    i32 138, label %47
    i32 130, label %64
    i32 128, label %81
    i32 133, label %98
    i32 136, label %115
    i32 132, label %115
    i32 134, label %115
    i32 137, label %115
    i32 129, label %115
  ]

8:                                                ; preds = %2
  %9 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %13 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 4
  %17 = load i32, i32* @ibmvmc_state_capabilities, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %21 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %22 = call i32 @ibmvmc_process_capabilities(%struct.crq_server_adapter* %20, %struct.ibmvmc_crq_msg* %21)
  br label %29

23:                                               ; preds = %8
  %24 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 4
  %28 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %19
  br label %131

30:                                               ; preds = %2
  %31 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %35 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %39 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %40 = call i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter* %38, %struct.ibmvmc_crq_msg* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %44 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %45 = call i32 @ibmvmc_process_open_resp(%struct.ibmvmc_crq_msg* %43, %struct.crq_server_adapter* %44)
  br label %46

46:                                               ; preds = %42, %30
  br label %131

47:                                               ; preds = %2
  %48 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %52 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %56 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %57 = call i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter* %55, %struct.ibmvmc_crq_msg* %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %61 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %62 = call i32 @ibmvmc_add_buffer(%struct.crq_server_adapter* %60, %struct.ibmvmc_crq_msg* %61)
  br label %63

63:                                               ; preds = %59, %47
  br label %131

64:                                               ; preds = %2
  %65 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %73 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %74 = call i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter* %72, %struct.ibmvmc_crq_msg* %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %78 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %79 = call i32 @ibmvmc_rem_buffer(%struct.crq_server_adapter* %77, %struct.ibmvmc_crq_msg* %78)
  br label %80

80:                                               ; preds = %76, %64
  br label %131

81:                                               ; preds = %2
  %82 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %86 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %90 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %91 = call i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter* %89, %struct.ibmvmc_crq_msg* %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %95 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %96 = call i32 @ibmvmc_recv_msg(%struct.crq_server_adapter* %94, %struct.ibmvmc_crq_msg* %95)
  br label %97

97:                                               ; preds = %93, %81
  br label %131

98:                                               ; preds = %2
  %99 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %103 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %107 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %108 = call i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter* %106, %struct.ibmvmc_crq_msg* %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %112 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %113 = call i32 @ibmvmc_process_close_resp(%struct.ibmvmc_crq_msg* %111, %struct.crq_server_adapter* %112)
  br label %114

114:                                              ; preds = %110, %98
  br label %131

115:                                              ; preds = %2, %2, %2, %2, %2
  %116 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %120 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_warn(i32 %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  br label %131

123:                                              ; preds = %2
  %124 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %4, align 8
  %128 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dev_warn(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %123, %115, %114, %97, %80, %63, %46, %29
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ibmvmc_process_capabilities(%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @ibmvmc_validate_hmc_session(%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*) #1

declare dso_local i32 @ibmvmc_process_open_resp(%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*) #1

declare dso_local i32 @ibmvmc_add_buffer(%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*) #1

declare dso_local i32 @ibmvmc_rem_buffer(%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*) #1

declare dso_local i32 @ibmvmc_recv_msg(%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*) #1

declare dso_local i32 @ibmvmc_process_close_resp(%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
