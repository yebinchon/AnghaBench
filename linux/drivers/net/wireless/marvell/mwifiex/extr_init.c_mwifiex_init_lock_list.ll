; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_lock_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_lock_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.mwifiex_private**, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mwifiex_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MAX_NUM_TID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_init_lock_list(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 15
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 14
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 13
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 12
  %17 = call i32 @spin_lock_init(i32* %16)
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 1
  %27 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %27, i64 %28
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %29, align 8
  %31 = icmp ne %struct.mwifiex_private* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %33, i32 0, i32 1
  %35 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %35, i64 %36
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %37, align 8
  store %struct.mwifiex_private* %38, %struct.mwifiex_private** %3, align 8
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 10
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %43, i32 0, i32 13
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 12
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 11
  %51 = call i32 @spin_lock_init(i32* %50)
  br label %52

52:                                               ; preds = %32, %24
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 11
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 10
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 9
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %66, i32 0, i32 8
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %69, i32 0, i32 7
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %72, i32 0, i32 6
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %75, i32 0, i32 5
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 4
  %80 = call i32 @skb_queue_head_init(i32* %79)
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %81, i32 0, i32 3
  %83 = call i32 @skb_queue_head_init(i32* %82)
  store i64 0, i64* %4, align 8
  br label %84

84:                                               ; preds = %105, %56
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @spin_lock_init(i32* %103)
  br label %105

105:                                              ; preds = %90
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %84

108:                                              ; preds = %84
  store i64 0, i64* %4, align 8
  br label %109

109:                                              ; preds = %178, %108
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %112 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %181

115:                                              ; preds = %109
  %116 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %116, i32 0, i32 1
  %118 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %118, i64 %119
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %120, align 8
  %122 = icmp ne %struct.mwifiex_private* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %178

124:                                              ; preds = %115
  %125 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %125, i32 0, i32 1
  %127 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %126, align 8
  %128 = load i64, i64* %4, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %127, i64 %128
  %130 = load %struct.mwifiex_private*, %struct.mwifiex_private** %129, align 8
  store %struct.mwifiex_private* %130, %struct.mwifiex_private** %3, align 8
  store i64 0, i64* %5, align 8
  br label %131

131:                                              ; preds = %144, %124
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @MAX_NUM_TID, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %137 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %136, i32 0, i32 10
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i64, i64* %5, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %5, align 8
  br label %131

147:                                              ; preds = %131
  %148 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %149 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %148, i32 0, i32 9
  %150 = call i32 @INIT_LIST_HEAD(i32* %149)
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %152 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %151, i32 0, i32 8
  %153 = call i32 @INIT_LIST_HEAD(i32* %152)
  %154 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %155 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %154, i32 0, i32 7
  %156 = call i32 @INIT_LIST_HEAD(i32* %155)
  %157 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %158 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %157, i32 0, i32 6
  %159 = call i32 @INIT_LIST_HEAD(i32* %158)
  %160 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %161 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %160, i32 0, i32 5
  %162 = call i32 @skb_queue_head_init(i32* %161)
  %163 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %164 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %163, i32 0, i32 4
  %165 = call i32 @skb_queue_head_init(i32* %164)
  %166 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %167 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %166, i32 0, i32 3
  %168 = call i32 @spin_lock_init(i32* %167)
  %169 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %170 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %169, i32 0, i32 2
  %171 = call i32 @spin_lock_init(i32* %170)
  %172 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %173 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %172, i32 0, i32 1
  %174 = call i32 @spin_lock_init(i32* %173)
  %175 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %176 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %175, i32 0, i32 0
  %177 = call i32 @idr_init(i32* %176)
  br label %178

178:                                              ; preds = %147, %123
  %179 = load i64, i64* %4, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %4, align 8
  br label %109

181:                                              ; preds = %109
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
