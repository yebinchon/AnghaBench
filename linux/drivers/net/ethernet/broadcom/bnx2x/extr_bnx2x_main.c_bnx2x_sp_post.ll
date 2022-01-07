; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_sp_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_sp_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.eth_spe = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"BUG! EQ ring full!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"BUG! SPQ ring full!\0A\00", align 1
@SPE_HDR_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID_SHIFT = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [100 x i8] c"SPQE[%x] (%x:%x)  (cmd, common?) (%d,%d)  hw_cid %x  data (%x:%x) type(0x%x) left (CQ, EQ) (%x,%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_sp_post(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.eth_spe*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @bnx2x_is_contextless_ramrod(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %6
  %26 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 1
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = call i32 (...) @bnx2x_panic()
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %163

38:                                               ; preds = %25
  br label %53

39:                                               ; preds = %6
  %40 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 2
  %42 = call i32 @atomic_read(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = call i32 (...) @bnx2x_panic()
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %163

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %55 = call %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x* %54)
  store %struct.eth_spe* %55, %struct.eth_spe** %14, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SPE_HDR_CMD_ID_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @HW_CID(%struct.bnx2x* %59, i32 %60)
  %62 = or i32 %58, %61
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %65 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @SPE_HDR_FUNCTION_ID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @SPE_HDR_CONN_TYPE_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @SPE_HDR_CONN_TYPE, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %15, align 4
  %77 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %78 = call i32 @BP_FUNC(%struct.bnx2x* %77)
  %79 = load i32, i32* @SPE_HDR_FUNCTION_ID_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* @SPE_HDR_FUNCTION_ID, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %15, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %15, align 4
  br label %87

85:                                               ; preds = %53
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %85, %71
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %91 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %96 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %102 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i8* %100, i8** %104, align 8
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %87
  %108 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %109 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %108, i32 0, i32 1
  %110 = call i32 @atomic_dec(i32* %109)
  br label %115

111:                                              ; preds = %87
  %112 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 2
  %114 = call i32 @atomic_dec(i32* %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* @BNX2X_MSG_SP, align 4
  %117 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %121 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @U64_HI(i32 %122)
  %124 = trunc i64 %123 to i32
  %125 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %126 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @U64_LO(i32 %127)
  %129 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %130 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = sext i32 %128 to i64
  %134 = getelementptr i8, i8* %132, i64 %133
  %135 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = ptrtoint i8* %134 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @HW_CID(%struct.bnx2x* %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %152 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %151, i32 0, i32 2
  %153 = call i32 @atomic_read(i32* %152)
  %154 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %155 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %154, i32 0, i32 1
  %156 = call i32 @atomic_read(i32* %155)
  %157 = call i32 @DP(i32 %116, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %124, i32 %142, i32 %143, i32 %144, i32 %147, i32 %148, i32 %149, i32 %150, i32 %153, i32 %156)
  %158 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %159 = call i32 @bnx2x_sp_prod_update(%struct.bnx2x* %158)
  %160 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %161 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %160, i32 0, i32 0
  %162 = call i32 @spin_unlock_bh(i32* %161)
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %115, %44, %30
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @bnx2x_is_contextless_ramrod(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @bnx2x_sp_prod_update(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
