; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.ethtool_rxnfc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLASS_CODE_USER_PROG1 = common dso_local global i64 0, align 8
@CLASS_CODE_SCTP_IPV6 = common dso_local global i64 0, align 8
@RXH_DISCARD = common dso_local global i32 0, align 4
@TCAM_KEY_DISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.ethtool_rxnfc*)* @niu_set_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_set_hash_opts(%struct.niu* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @niu_ethflow_to_class(i32 %11, i64* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %155

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @CLASS_CODE_SCTP_IPV6, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %155

28:                                               ; preds = %21
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RXH_DISCARD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %28
  %36 = load %struct.niu*, %struct.niu** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @niu_lock_parent(%struct.niu* %36, i64 %37)
  %39 = load %struct.niu*, %struct.niu** %4, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %46 = sub nsw i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* @TCAM_KEY_DISC, align 8
  %50 = load i64, i64* %7, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @TCAM_KEY(i64 %54)
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @nw64(i32 %55, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.niu*, %struct.niu** %4, align 8
  %60 = getelementptr inbounds %struct.niu, %struct.niu* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %66 = sub nsw i64 %64, %65
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  store i64 %58, i64* %67, align 8
  %68 = load %struct.niu*, %struct.niu** %4, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @niu_unlock_parent(%struct.niu* %68, i64 %69)
  store i32 0, i32* %3, align 4
  br label %155

71:                                               ; preds = %28
  %72 = load %struct.niu*, %struct.niu** %4, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %79 = sub nsw i64 %77, %78
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TCAM_KEY_DISC, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %71
  %86 = load %struct.niu*, %struct.niu** %4, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @niu_lock_parent(%struct.niu* %86, i64 %87)
  %89 = load %struct.niu*, %struct.niu** %4, align 8
  %90 = getelementptr inbounds %struct.niu, %struct.niu* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %96 = sub nsw i64 %94, %95
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* @TCAM_KEY_DISC, align 8
  %100 = xor i64 %99, -1
  %101 = load i64, i64* %7, align 8
  %102 = and i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %105 = sub nsw i64 %103, %104
  %106 = call i32 @TCAM_KEY(i64 %105)
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @nw64(i32 %106, i64 %107)
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.niu*, %struct.niu** %4, align 8
  %111 = getelementptr inbounds %struct.niu, %struct.niu* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %117 = sub nsw i64 %115, %116
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  store i64 %109, i64* %118, align 8
  %119 = load %struct.niu*, %struct.niu** %4, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @niu_unlock_parent(%struct.niu* %119, i64 %120)
  br label %122

122:                                              ; preds = %85, %71
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @niu_ethflow_to_flowkey(i32 %126, i64* %7)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %155

132:                                              ; preds = %123
  %133 = load %struct.niu*, %struct.niu** %4, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @niu_lock_parent(%struct.niu* %133, i64 %134)
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %138 = sub nsw i64 %136, %137
  %139 = call i32 @FLOW_KEY(i64 %138)
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @nw64(i32 %139, i64 %140)
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.niu*, %struct.niu** %4, align 8
  %144 = getelementptr inbounds %struct.niu, %struct.niu* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %150 = sub nsw i64 %148, %149
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  store i64 %142, i64* %151, align 8
  %152 = load %struct.niu*, %struct.niu** %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @niu_unlock_parent(%struct.niu* %152, i64 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %132, %129, %35, %25, %14
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @niu_ethflow_to_class(i32, i64*) #1

declare dso_local i32 @niu_lock_parent(%struct.niu*, i64) #1

declare dso_local i32 @nw64(i32, i64) #1

declare dso_local i32 @TCAM_KEY(i64) #1

declare dso_local i32 @niu_unlock_parent(%struct.niu*, i64) #1

declare dso_local i32 @niu_ethflow_to_flowkey(i32, i64*) #1

declare dso_local i32 @FLOW_KEY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
